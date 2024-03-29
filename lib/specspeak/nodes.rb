module SpecSpeak
  class Node
    attr_reader :children, :name

    def initialize(name='', children=[])
      @children = children
      @name     = name
    end

    def ==(other_node)
      name == other_node.name && @children == other_node.children
    end
  end

  class RootNode < Node; end
  class ModuleNode < Node; end
  class RequirementNode < Node; end
  class ExamplesNode < Node; end
  class RowNode < Node; end
  class NotesNode < Node; end
end