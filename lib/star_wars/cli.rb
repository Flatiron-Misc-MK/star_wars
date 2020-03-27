
class CLI
  #need  instances/objects of the class 2 call the method
  # def test 
  #   puts "Hello World" #instance method
  # end
  
  def start
    self.welcome
    self.get_film_list
    self.menu
    self.goodbye
  end
   
  def welcome
    puts "Welcome to The Star Wars Films List"
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the movie you want more info on or type list to return or type exit."
      input = gets.strip.downcase
        case input
      when '1'
        API.get_film_description(API.all_films[0])
        puts API.description
      when '2'
        API.get_film_description(API.all_films[1])
        puts API.description
      when '3'
        API.get_film_description(API.all_films[2])
        puts API.description
      when '4'
        API.get_film_description(API.all_films[3])
        puts API.description
      when '5'
        API.get_film_description(API.all_films[4])
        puts API.description
      when '6'
        API.get_film_description(API.all_films[5])
        puts API.description
      when '7'
        API.get_film_description(API.all_films[6])
        puts API.description
      when "list"
        get_film_list
      end
    end
  end
  
  def goodbye
    puts "See you later, may the FORCE be with you!!"
  end

  def get_film_list
    API.get_films
    self.display_film_list
    #calling api to get list
  end

  def display_film_list
    API.all_films.each.with_index(1) do |str, index|
      # binding.pry
      puts "#{index}. #{str}"
    end
  end

  
 
end