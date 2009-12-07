desc 'Default task: run all tests'
task :default => [:test]

task :test do
  exec "thor monk:test"
end

desc 'Load abbreviations'
task :load_abbreviations do
  ROOT_DIR = File.expand_path(File.dirname(__FILE__)) unless defined? ROOT_DIR

  begin
    require "vendor/dependencies/lib/dependencies"
  rescue LoadError
    require "dependencies"
  end

  require "monk/glue"
  require "ohm"
  Ohm.connect(settings(:redis))
  puts "Flushing out old abbreviations."
  Ohm.flush

  require "app/models/abbreviation"
  require "db/create_abbreviations"
  puts "Reloaded abbreviations!"
end
