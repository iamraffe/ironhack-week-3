class CommandLine
	def initialize
		@movie_handler = MovieHandler.new
	end

	def show_ratings
		movies = @movie_handler.get_ratings

		binding.pry
	end
end