class API
	attr_accessor :title
	def initialize(title)
		@title = title
	end
  def self.get_films
		@response = HTTParty.get('https://swapi.co/api/films/')
    @all_films = []
		@response['results'].each do |film|
			@all_films << film
		end
		self.create_films
	end
	def self.create_films
		@all_films.each do |film|
			Films.new(film)
		end
	end
	def self.all_films
		@all_films
	end
end