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
      puts "Enter the number of the movie you want more info on or type list to exit or type exit."
      input = gets.strip.downcase
        case input
      when '1'
        film = Film.all[0]
        puts film.opening_crawl
      when '2'
        film = Film.all[1]
        puts film.opening_crawl
      when '3'
        film = Film.all[2]
        puts film.opening_crawl
      when '4'
        film = Film.all[3]
        puts film.opening_crawl
      when '5'
        film = Film.all[4]
        puts film.opening_crawl
      when '6'
        film = Film.all[5]
        puts film.opening_crawl
      when '7'
        film = Film.all[6]
        puts film.opening_crawl
      when "list"
        display_film_list
      end
    end
  end
  def goodbye
    puts "See you later, may the FORCE be with you!!"
  end
  def get_film_list
    API.get_films
    self.display_film_list
  end
  def display_film_list
    Film.all.each.with_index(1) do |film, index|
      puts "#{index}. #{film.title}"
    end
  end
end