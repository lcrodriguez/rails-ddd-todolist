require 'rake/testtask'

Rake::TestTask.new('unit') do |t|
  t.libs.push "lib"
  t.test_files = FileList['spec/**/*_spec.rb']
  t.verbose = true
end