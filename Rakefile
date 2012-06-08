require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs.push "test"
  t.libs.push "lib"

  t.test_files = FileList['test/*_test.rb']
  t.verbose = false
end

desc "Compiles the lexer and runs test/lexer_test.rb"
task :lexer do |t|
  sh "ragel -R ragel/lexer.rl -o lib/specspeak/lexer.rb"
  require_relative 'test/lexer_test'
end