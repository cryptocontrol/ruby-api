require "bundler"
Bundler.setup

require "rspec/core/rake_task"
Rspec::Core::RakeTask.new(:spec)

gemspec = eval(File.read("crypto-news-api.gemspec"))

task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + ["crypto-news-api.gemspec"] do
  system "gem build crypto-news-api.gemspec"
  system "gem install crypto-news-api-1.0.0.gem"
end