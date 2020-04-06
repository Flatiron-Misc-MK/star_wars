class API
	# API class gathers information from the SWAPI website.
	# This API provides details on the 7 star wars movies.
	# For this app it will be pulling the 7 movies.
	#class method
  def self.get_films #method to get films from API class/stores the return data from the API in response variable
		response = HTTParty.get('https://swapi.co/api/films/') #api website to get data from


		#each method---loop that takes in the results from each film(iterates thru each element)
						#returns original value
		#map/collect method ---doesnt use puts can change return value/puts always ahs a nil return value with map/collect
								#can manipulate return values
		response['results'].each do |film| # iterates through the elements of the array stored in each response for the film
			Film.new(film) #creates a new instance of a film, movie title and result(description)
		end
		
	end
	
end