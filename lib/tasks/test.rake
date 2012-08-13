require 'rake/testtask'

namespace 'test' do |ns|
  test_files             = FileList['spec/**/*_spec.rb']
  integration_test_files = FileList['spec/**/*_integration_spec.rb']
  unit_test_files        = test_files - integration_test_files

  desc "Run unit tests"
  Rake::TestTask.new('unit') do |t|
    t.libs.push "lib"
    t.test_files = unit_test_files
    t.verbose = true
  end

  desc "Run integration tests"
  Rake::TestTask.new('integration') do |t|
    t.libs.push "lib"
    t.test_files = integration_test_files
    t.verbose = true
  end

  desc "Run acceptance tests"
  task 'acceptance' => 'cucumber'
end

Rake::Task['test'].clear
desc "Run all tests"
task 'test' => %w[test:unit test:integration]
