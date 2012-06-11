=begin
%%{

  machine lexer;

  keyword   = ("Module" | "Requirement" | "Examples" | "Notes")':';
  string    = [a-zA-Z_<>](print & [^:])*;
  table_row = '|'print*'|';

  main := |*

    keyword   => { emit_keyword(token_array, data, ts, te) };
    string    => { token_array << [:STRING, data[ts...te].pack("c*")] };
    table_row => { emit_row(data, token_array, ts, te) };

    space;

  *|;
}%%
=end

module SpecSpeak

  class Lexer

    def initialize
      %% write data;
      # %% this just fixes syntax highlighting in TextMate et al.
    end

    def emit_keyword(token_array, data, ts, te)
      keyword = data[ts...te].pack("c*").gsub(/:$/, '')
      token_array << [keyword.upcase.to_sym, keyword]
    end

    def emit_row(data, target_array, ts, te)
      target_array << [:ROW, 'Row']
      cells = data[(ts + 1)...( te - 1)].pack("c*")
      cells.split('|').each do |cell|
        target_array << [:CELL, cell.strip]
      end
    end

    def tokenize(data)
      data = data.unpack("c*") if(data.is_a?(String))
      eof = data.length
      token_array = []

      %% write init;
      %% write exec;

      token_array
    end

  end

end