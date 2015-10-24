class CommandLine
	def initialize
		@movie_handler = MovieHandler.new
	end

	def print_ratings(movie_ratings)
		10.downto(1) do |i|
			print "|"
			movie_ratings.each do |movie|
				if(i <= movie[:rating].floor)
					print "#"
				else
					print " "
				end
				print "|"
			end
			puts
		end
	end

	def print_movies(movie_ratings)
		movie_ratings.size.times {print "--"}
		puts "-"
	end

	def show_ratings
		movie_ratings = @movie_handler.get_ratings
		print_ratings(movie_ratings)
		print_movies(movie_ratings)
	end
end