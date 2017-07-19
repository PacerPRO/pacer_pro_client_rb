require 'dotenv/tasks'
require "bundler/gem_tasks"

desc 'run specs'
task :default do
  sh 'rspec'
end

file 'README.md' => ['dotenv', '.env', 'lib/pacer_pro_client/version.rb'] do |t|
  require 'pacer_pro_client/version'
  readme = File.read('README.md')
    .gsub('{{VERSION}}', PacerProClient::VERSION)
    .gsub('YOUR_GIT_USERNAME', ENV.fetch('GIT_USERNAME'))
    .gsub('YOUR_GIT_REPO', ENV.fetch('GIT_REPO'))
  puts readme
  File.open('README.md', 'w') do |f|
    f.write(readme)
  end
end