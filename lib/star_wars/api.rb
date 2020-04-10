# class API
# 	# API class gathers information from the SWAPI website.
# 	# This API provides details on the 7 star wars movies.
# 	# For this app it will be pulling the 7 movies.
# 	#class method
#   def self.get_films #method to get films from API class/stores the return data from the API in response variable
# 		response = HTTParty.get('https://api.themoviedb.org/3/collection/10?api_key=2a127865c8f2844264f4fe7e524d8b3f')
# 	 #api website to get data from
		
# # binding.pry
# 		#each method---loop that takes in the results from each film(iterates thru each element)
# 						#returns original value
# 		#map/collect method ---doesnt use puts can change return value/puts always ahs a nil return value with map/collect
# 					#can manipulate return values
# 		response['title'].each do |original_title|
# 			# iterates through the elements of the array stored in each response for the film
# 			Film.new(film) #creates a new instance of a film, movie title and result(description)
# 		end
		
# 	end
	
# end

# class API

# 	def self.get_films 
# 		response = HTTParty.get('https://api.themoviedb.org/3/collection/10?api_key=2a127865c8f2844264f4fe7e524d8b3f')
# 		# binding.pry
# 		response['id'].each do |film|
# 		# binding.pry
			
# 		Film.new(film) 
# 		end
					
# 	end
# end

# class API
# 	def self.get_films 
# 		response = HTTParty.get('https://api.themoviedb.org/3/collection/10?api_key=2a127865c8f2844264f4fe7e524d8b3f')
# 			   stored_obj = response.transform_keys(&:to_sym)
# 				get_title = stored_obj[:parts]
# 				  get_title.each do |title|
# 				#    title["title"]
# 				#    binding.pry
# 			 Film.new(title)
# 		end
# 	end
# end

class API

	def self.get_films
		response = HTTParty.get('https://api.themoviedb.org/3/collection/10?api_key=2a127865c8f2844264f4fe7e524d8b3f')
		stored_obj = response.transform_keys(&:to_sym)
		get_title = stored_obj[:parts]
		# binding.pry
		get_title.each do |title|
		Film.new(title['title'],title['overview'], title['release_date'])
	
		end
		

	end

end
