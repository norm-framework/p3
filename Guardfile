guard 'rake', :task => 'lexer' do
  watch %r{^ragel/lexer\.rl$}
end

guard 'minitest' do
  watch(%r|^spec/(.*)_spec\.rb|)
  watch(%r|^lib/specspeak/lexer\.rb|)  { "spec/lexer_spec.rb" }
  watch(%r|^spec/spec_helper\.rb|)     { "spec" }
end