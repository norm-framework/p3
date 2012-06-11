require_relative "spec_helper"
require_relative "../lib/specspeak/parser"

module SpecSpeak

  describe Parser do

    it "must parse an empty file" do
      file  = ""
      nodes = RootNode.new
      assert_output file, nodes
    end

    it "must parse an empty module" do
      file  = "Module: Create a Project"
      nodes = RootNode.new('', [
                ModuleNode.new('Create a Project', [])
              ])
      assert_output file, nodes
    end

    it "must parse multiple modules" do
      file = <<-EOF
             Module: Create a Project
             Module: Create a User
             EOF
      nodes = RootNode.new('', [
                ModuleNode.new('Create a Project', []),
                ModuleNode.new('Create a User', [])
              ])
      assert_output file, nodes
    end

    it "must parse a module with an empty requirement" do
      file = <<-EOF
               Module: Create a Project

               Requirement:
             EOF
      nodes = RootNode.new('', [
                ModuleNode.new('Create a Project', [
                  RequirementNode.new
                ])
              ])
      assert_output file, nodes
    end

    it "must parse a non-empty requirement" do
      file = <<-EOF
               Module: Create a Project

               Requirement:
                 Given a user with role <Role>
             EOF
      nodes = RootNode.new('', [
                ModuleNode.new('Create a Project', [
                  RequirementNode.new('Given a user with role <Role>', [])
                ])
              ])
      assert_output file, nodes
    end

    it "must parse a multi-line requirement" do
      file = <<-EOF
               Module: Create a Project

               Requirement:
                 Given a
                 user with
                 role <Role>
             EOF
      nodes = RootNode.new('', [
                ModuleNode.new('Create a Project', [
                  RequirementNode.new("Given a\nuser with\nrole <Role>", [])
                ])
              ])
      assert_output file, nodes
    end

    it "must parse examples" do
      file = <<-EOF
               Module: Create a Project

               Requirement:
                 Given a
                 user with
                 role <Role>

                 Examples:
                  | Role | Remarks |
                  | PM   | ARRR    |
                  | User | RAAA    |
             EOF
      nodes = RootNode.new('', [
                ModuleNode.new('Create a Project', [
                  RequirementNode.new("Given a\nuser with\nrole <Role>", [
                    ExamplesNode.new('', [
                      RowNode.new('', ['Role', 'Remarks']),
                      RowNode.new('', ['PM', 'ARRR']),
                      RowNode.new('', ['User', 'RAAA'])
                    ])
                  ])
                ])
              ])
      assert_output file, nodes
    end

    it "must parse notes" do
      file = <<-EOF
               Module: Create a Project

               Requirement:
                 Given a
                 user with
                 role <Role>

                 Examples:
                  | Role | Remarks |
                  | PM   | ARRR    |
                  | User | RAAA    |

                 Notes:
                  The quick
                  brown fox jumps
                  over the lazy
                  dog
             EOF
      nodes = RootNode.new('', [
                ModuleNode.new('Create a Project', [
                  RequirementNode.new("Given a\nuser with\nrole <Role>", [
                    ExamplesNode.new('', [
                      RowNode.new('', ['Role', 'Remarks']),
                      RowNode.new('', ['PM', 'ARRR']),
                      RowNode.new('', ['User', 'RAAA'])
                    ]),
                    NotesNode.new("The quick\nbrown fox jumps\nover the lazy\ndog")
                  ])
                ])
              ])
      assert_output file, nodes
    end

    it "must parse multiple requirements" do
      file = <<-EOF
               Module: Project Management

               Requirement:
                 A <Role> in the system <Can or Cannot Create> projects

                 Examples:
                   | Role | Can or Cannot Create |
                   | PM   | Can Create           |
                   | User | Cannot Create        |

                Requirement:
                  An empty project is invalid
             EOF
      nodes = RootNode.new('', [
                ModuleNode.new('Project Management', [
                  RequirementNode.new("A <Role> in the system <Can or Cannot Create> projects", [
                    ExamplesNode.new('', [
                      RowNode.new('', ['Role', 'Can or Cannot Create']),
                      RowNode.new('', ['PM', 'Can Create']),
                      RowNode.new('', ['User', 'Cannot Create'])
                    ])
                  ]),
                  RequirementNode.new("An empty project is invalid", [])
                ])
              ])
      assert_output file, nodes
    end

    def assert_output(file, nodes, show_tokens = false)
      Parser.new.parse(file, show_tokens).must_equal nodes
    end

  end

end