class API
	#class method
  def self.get_films #method to get films from API class
		response = HTTParty.get('https://swapi.co/api/films/') #api website to get data from
    
		response['results'].each do |film| # returns the elements of an array
			Film.new(film) #creates a new instance of a film
		end
		
	end
	
end