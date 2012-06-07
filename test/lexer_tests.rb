require "test_helper"
require "specspeak/lexer"

module SpecSpeak

  class LexerTests < Test::Unit::TestCase

    def test_requirement_keyword
      data   = "Requirement:"
      tokens = [{:name => :keyword, :value => "Requirement"}]
      assert_equal tokens, Lexer.new.scan(data)
    end

  end # class LexerTests

end