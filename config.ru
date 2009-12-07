require "init"

Main.set :run, false
Main.set :environment, :production
Main.set :raise_errors, true

run Main
