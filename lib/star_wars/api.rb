class API 
  attr_accessor :title

  def initialize(title)
    @title = title
  end
  
  def self.get_films
    response = HTTParty.get('https://swapi.co/api/films/')
    @all_films = response['results'].map{|hash| hash['title']}
  end

 

  def self.all_films
    @all_films
  end

  def self.get_film_description(film_name)
    response = HTTParty.get('https://swapi.co/api/films/')
    response['results'].each do |hash|
      if hash['title'] == film_name
        @description = hash["opening_crawl"]
      end
    end
  end

  def self.description
    @description
  end
end






