require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs.push "spec"
  t.libs.push "lib"

  t.test_files = FileList['spec/*_spec.rb']
  t.verbose = false
end

desc "Compiles the lexer"
task :lexer do |t|
  sh "ragel -R ragel/lexer.rl -o lib/specspeak/lexer.rb"
end