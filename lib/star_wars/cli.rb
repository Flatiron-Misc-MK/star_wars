
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
      # sleep(2)
    # puts "Please select a title from the list for more information"
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the movie you want more info on or type exit."
      input = gets.strip.downcase
        case input
      when '1'
        puts "More info on Movie 1"
      when '2'
        puts "More info on Movie 2"
      end
    end
  end

  def goodbye
    puts "See you later, may the FORCE be with you"
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