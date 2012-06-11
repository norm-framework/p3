require_relative "spec_helper"
require_relative "../lib/specspeak/lexer"

module SpecSpeak

  describe Lexer do

    keywords = %w{ Module Requirement Examples Notes }

    keywords.each do |keyword|
      it "must recognize the #{ keyword } keyword" do
        data   = "#{ keyword }:"
        tokens = [ [keyword.upcase.to_sym, keyword] ]
        assert_output data, tokens
      end
    end

    it "must tokenize tables" do
      data  = <<-EOF
                | Name      | Description       |
                | Project A | First Project     |
                | Project B | Second Project    |
              EOF
      tokens = [
                 [:ROW, 'Row'], [:CELL, 'Name'],      [:CELL, 'Description'],
                 [:ROW, 'Row'], [:CELL, 'Project A'], [:CELL, 'First Project'],
                 [:ROW, 'Row'], [:CELL, 'Project B'], [:CELL, 'Second Project']
               ]
      assert_output data, tokens
    end


    it "must tokenize strings" do
      data   = "Module: Create a Project"
      tokens = [ [:MODULE, "Module"], [:STRING, 'Create a Project'] ]
      assert_output data, tokens
    end

    it "must tokenize sentences with placeholders" do
      data   = <<-EOF
               Given <Role>
               <Something>
               EOF
      tokens = [ [:STRING, 'Given <Role>'], [:STRING, '<Something>'] ]
      assert_output data, tokens
    end


    it "must tokenize a full requirements file" do
      data = <<-EOF
             Module: Create a Project

             Requirement:
               Given a user has a role of <Role> in the system
               Then he <Can or Cannot Create> projects

               Examples:
                 | Role  | Can or Cannot Create |
                 | Admin | Can Create           |
                 | User  | Cannot Create        |

               Notes:
                 The quick brown fox jumps over the lazy
                 dog. The quick brown fox jumps.
             EOF
      tokens = [
                 [:MODULE, 'Module'], [:STRING, 'Create a Project'],
                 [:REQUIREMENT, 'Requirement'],
                    [:STRING, 'Given a user has a role of <Role> in the system'],
                    [:STRING, 'Then he <Can or Cannot Create> projects'],

                    [:EXAMPLES, 'Examples'],
                      [:ROW, 'Row'], [:CELL, 'Role'], [:CELL, 'Can or Cannot Create'],
                      [:ROW, 'Row'], [:CELL, 'Admin'], [:CELL, 'Can Create'],
                      [:ROW, 'Row'], [:CELL, 'User'], [:CELL, 'Cannot Create'],

                    [:NOTES, 'Notes'],
                      [:STRING, 'The quick brown fox jumps over the lazy'],
                      [:STRING, 'dog. The quick brown fox jumps.']
               ]
      assert_output data, tokens
    end

    def assert_output(data, tokens)
      Lexer.new.tokenize(data).must_equal tokens
    end

  end # describe Lexer

end # module SpecSpeak