class  API
    def self.get_categories
      response = HTTParty.get('https://swapi.co/api/people')
      binding.pry
    end
    
  end