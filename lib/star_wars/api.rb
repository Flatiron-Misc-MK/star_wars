class API
	
  def self.get_films
		response = HTTParty.get('https://swapi.co/api/films/')
    
		response['results'].each do |film|
			Film.new(film)
		end
		
	end
	
end