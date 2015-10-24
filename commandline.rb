class CommandLine
	def initialize
		@movie_handler = MovieHandler.new
	end

	def print_ratings(movie_ratings)
		10.downto(1) do |i|
			print "\n|"
			movie_ratings.each do |movie|
				print i <= movie[:rating].floor ? "#" : " "
				print "|"
			end
		end
	end

	def print_legend(movie_ratings)
		print "\n"+"--" * movie_ratings.size + "-\n"
		print "|"
		movie_ratings.size.times{|i| print "#{i+1}|"}
		puts
	end

	def print_movies(movie_ratings)
		movie_ratings.each_with_index{|movie, key| puts "#{key+1}. #{movie[:name]}"}
	end

	def show_ratings
		movie_ratings = @movie_handler.get_ratings
		print_ratings(movie_ratings)
		print_legend(movie_ratings)
		print_movies(movie_ratings)
	end
end