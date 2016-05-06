guard :minitest, test_folders: 'tests', test_file_patterns: 'tests.rb' do
  watch(%r{^tests/(.*)_test\.rb$}) { |m| "tests/tests.rb" }
  watch(%r{^lib/(.*)\.rb$})        { |m| "tests/tests.rb" }
  watch(%r{^tests/tests\.rb$})     { |m| "tests/tests.rb" }
end
