require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name        = "recloner"
    gemspec.summary     = "Clone power for your CouchRest::Model::Base docs."
    gemspec.description = "This gem exposes a 'Recloner' module containing a 'clone' method, allowing you to easily clone CouchRest::Model::Base docs."
    gemspec.email       = "moonmaster9000@gmail.com"
    gemspec.files       = FileList['lib/**/*.rb', 'readme.markdown']
    gemspec.homepage    = "http://github.com/moonmaster9000/recloner"
    gemspec.authors     = ["Matt Parker"]
    gemspec.add_dependency('couchrest_model', '1.0.0.beta7')
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "recloner #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
