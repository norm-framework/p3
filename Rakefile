require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs.push "spec"
  t.libs.push "lib"

  t.test_files = FileList['spec/*_spec.rb']
  t.verbose = false
end

desc "Compiles the lexer"
task :lexer do |t|
  `ragel -R ragel/lexer.rl -o lib/specspeak/lexer.rb`
end

desc "Compiles the parser"
task :parser do |t|
  `racc racc/grammar.y -o lib/specspeak/parser.rb`
end