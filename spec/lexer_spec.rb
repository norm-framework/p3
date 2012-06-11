require_relative "spec_helper"
require_relative "../lib/specspeak/lexer"

module SpecSpeak

  describe Lexer do

    keywords = %w{ Module Feature Requirement Examples Notes }

    keywords.each do |keyword|
      it "must recognize the #{ keyword } keyword" do
        data   = "#{ keyword }:"
        tokens = [ [:keyword, keyword] ]
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
                 [:row, 'row'], [:cell, 'Name'],      [:cell, 'Description'],
                 [:row, 'row'], [:cell, 'Project A'], [:cell, 'First Project'],
                 [:row, 'row'], [:cell, 'Project B'], [:cell, 'Second Project']
               ]
      assert_output data, tokens
    end


    it "must tokenize strings" do
      data   = "Module: Create a Project"
      tokens = [ [:keyword, "Module"], [:string, 'Create a Project'] ]
      assert_output data, tokens
    end


    it "must tokenize sentences with placeholders" do
      data   = <<-EOF
               Given <Role>
               <Something>
               EOF
      tokens = [ [:string, 'Given <Role>'], [:string, '<Something>'] ]
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
                 [:keyword, 'Module'], [:string, 'Create a Project'],
                 [:keyword, 'Requirement'],
                    [:string, 'Given a user has a role of <Role> in the system'],
                    [:string, 'Then he <Can or Cannot Create> projects'],

                    [:keyword, 'Examples'],
                      [:row, 'row'], [:cell, 'Role'], [:cell, 'Can or Cannot Create'],
                      [:row, 'row'], [:cell, 'Admin'], [:cell, 'Can Create'],
                      [:row, 'row'], [:cell, 'User'], [:cell, 'Cannot Create'],

                    [:keyword, 'Notes'],
                      [:string, 'The quick brown fox jumps over the lazy'],
                      [:string, 'dog. The quick brown fox jumps.']
               ]
      assert_output data, tokens
    end

    def assert_output(data, tokens)
      Lexer.new.scan(data).must_equal tokens
    end

  end # describe Lexer

end # module SpecSpeak