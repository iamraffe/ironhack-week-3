class MovieHandler
	def initialize(db = Database.new, movies = [])
		@db = db
		@movies = movies
	end

	def check_with_imdb(movies)
		imdb_response = movies.map{|movie_name| Imdb::Search.new(movie_name).movies[0].rating}

		binding.pry
	end

	def get_ratings
		@movies = @db.retrieve_all
		check_with_imdb(@movies)
	end
end