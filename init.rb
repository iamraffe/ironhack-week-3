require "pry"
require "imdb"

require_relative 'database.rb'
require_relative 'moviehandler.rb'
require_relative 'commandline.rb'

cli = CommandLine.new
cli.show_ratings