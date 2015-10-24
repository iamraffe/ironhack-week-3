class MovieHandler
	def initialize(db = Database.new, movies = [])
		@db = db
		@movies = movies
	end

	def get_ratings
		@movies = @db.retrieve_all
	end
end