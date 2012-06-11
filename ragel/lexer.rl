=begin
%%{

  machine lexer;

  keyword   = ("Module" | "Feature" | "Requirement" | "Examples" | "Notes")':';
  string    = [a-zA-Z_<>](print & [^:])*;
  table_row = '|'print*'|';

  main := |*

    keyword   => { emit(:keyword, data, token_array, ts, te-1) };
    string    => { emit(:string, data, token_array, ts, te)  };
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

    def emit(token_name, data, target_array, ts, te)
      target_array << [token_name.to_sym, data[ts...te].pack("c*")]
    end

    def emit_row(data, target_array, ts, te)
      target_array << [:row, 'row']
      cells = data[(ts + 1)...( te - 1)].pack("c*")
      cells.split('|').each do |cell|
        target_array << [:cell, cell.strip]
      end
    end

    def scan(data)
      data = data.unpack("c*") if(data.is_a?(String))
      eof = data.length
      token_array = []

      %% write init;
      %% write exec;

      token_array
    end

  end

end