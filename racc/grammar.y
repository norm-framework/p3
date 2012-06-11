class SpecSpeak::Parser

  token MODULE
  token REQUIREMENT
  token STRING
  token EXAMPLES
  token ROW
  token CELL
  token NOTES

  rule
    Root:
      /* empty array */           { result = RootNode.new }
    | Modules                     { result = RootNode.new('', val[0]) }
    ;

    Modules:
      MODULE ModuleBody           { result = val[1] }
    | MODULE ModuleBody Modules   { result = val[1] + val[2] }
    ;

    ModuleBody:
      /* no body */        { result = [ModuleNode.new] }
    | STRING               { result = [ModuleNode.new(val[0])] }
    | STRING Requirements  { result = [ModuleNode.new(val[0], val[1])] }
    ;

    Requirements:
      REQUIREMENT RequirementBody              { result = val[1] }
    | REQUIREMENT RequirementBody Requirements { result = val[1] + val[2] }
    ;

    RequirementBody:
      /* no body */          { result = [RequirementNode.new] }
    | Strings                { result = [RequirementNode.new(val[0])] }
    | Strings Examples       { result = [RequirementNode.new(val[0], val[1])] }
    | Strings Examples Notes { result = [RequirementNode.new(val[0], val[1] + val[2])] }
    ;

    Strings:
      STRING                      { result = val[0] }
    | STRING Strings              { result = "#{ val[0] }\n#{ val[1] }" }
    ;

    Examples:
      EXAMPLES Rows               { result = [ExamplesNode.new('', val[1])] }
    ;

    Rows:
      ROW Cells                   { result = [RowNode.new('', val[1])] }
    | ROW Cells Rows              { result = [RowNode.new('', val[1])] + val[2] }
    ;

    Cells:
      CELL                        { result = [val[0]] }
    | CELL Cells                  { result = [val[0]] + val[1] }
    ;

    Notes:
      NOTES                       { result = [NotesNode.new] }
    | NOTES Strings               { result = [NotesNode.new(val[1])] }
    ;

end
---- header
  require_relative 'lexer'
  require_relative 'nodes'

---- inner
  def parse(code, show_tokens=false)
    @tokens = Lexer.new.tokenize(code)
    puts @tokens.inspect if show_tokens
    do_parse
  end

  def next_token
    @tokens.shift
  end