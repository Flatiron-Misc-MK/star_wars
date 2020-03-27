class API
  
  def self.get_films
    response = HTTParty.get('https://swapi.co/api/films/')

    binding.pry
    @@all_films = response['results'].map{|hash| hash['title']}
    #  response['results'].map(&:values)
      
  end

  def self.all_films
    @@all_films
  end
end



