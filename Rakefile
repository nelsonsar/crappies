require 'rake/testtask'

Rake::TestTask.new do |t|
  require 'bundler'
  Bundler.setup
  t.libs << ['test']
  t.test_files = FileList['test/*_test.rb', 'test/state_handler/*_test.rb']
  t.warning = true
end

desc "Run tests"
task :default => :test
