require 'rubygems'
require 'rake'

require 'bundler'
Bundler::GemHelper.install_tasks

begin
  require 'cucumber/rake/task'

  namespace :cucumber do
    Cucumber::Rake::Task.new(:ok) do |t|
      t.cucumber_opts = "--tags ~@wip"
    end

    Cucumber::Rake::Task.new(:wip, "Run features that are being worked on") do |t|
      t.cucumber_opts = "--tags @wip:2 --wip"
    end
  end

  task :cucumber => 'cucumber:ok'
rescue LoadError
  task :cucumber do
    abort "Cucumber is not available. In order to run features, you must: sudo gem install cucumber"
  end
end

task :default => :cucumber

# Don't print commands when shelling out (for example, running Cucumber)
RakeFileUtils.verbose(false)
