require_relative "test_helper"
require_relative "../lib/specspeak/lexer"

module SpecSpeak

  describe Lexer do

    it "must recognize the 'Feature:' keyword" do
      data   = "Feature:"
      tokens = [[:keyword, "Feature"]]
      assert_output(data, tokens)
    end

    it "must recognize the 'Requirement:' keyword" do
      data   = "Requirement:"
      tokens = [[:keyword, "Requirement"]]
      assert_output(data, tokens)
    end

    def assert_output(data, tokens)
      Lexer.new.scan(data).must_equal tokens
    end

  end # describe Lexer

end # module SpecSpeak