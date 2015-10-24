require 'imdb'

class Database
	def initialize(db = 'movies.txt')
		@db = db
	end

	def retrieve_all
		file_contents_array = IO.read(@db).split(/\r?\n/)
	end
end