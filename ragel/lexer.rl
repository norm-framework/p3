=begin
%%{

  machine lexer;

  keyword  = "Requirement:" | "Feature:";

  main := |*

    keyword => {
      emit(:keyword, data, token_array, ts, te-1)
    };

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