require_relative "test_helper"
require_relative "../lib/specspeak/lexer"

module SpecSpeak

  describe Lexer do

    keywords = %w{ Feature Requirement Examples Notes }

    keywords.each do |keyword|
      it "must recognize the #{ keyword } keyword" do
        data   = "#{ keyword }:"
        tokens = [[:keyword, keyword]]
        assert_output(data, tokens)
      end
    end


    def assert_output(data, tokens)
      Lexer.new.scan(data).must_equal tokens
    end

  end # describe Lexer

end # module SpecSpeak