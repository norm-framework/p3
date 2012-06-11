guard 'rake', :task => 'lexer' do
  watch %r{^ragel/lexer\.rl$}
end

guard 'rake', :task => 'parser' do
  watch %r{^racc/grammar\.y$}
end

guard 'minitest' do
  watch(%r|^spec/(.*)_spec\.rb|)
  watch(%r|^lib/specspeak/lexer\.rb|)   { "spec/lexer_spec.rb" }
  watch(%r|^lib/specspeak/parser\.rb|)  { "spec/parser_spec.rb" }
  watch(%r|^lib/specspeak/nodes\.rb|)   { "spec/parser_spec.rb" }
  watch(%r|^lib/specspeak/.*_node\.rb|) { "spec/parser_spec.rb" }
  watch(%r|^spec/spec_helper\.rb|)      { "spec" }
end