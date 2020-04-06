#this class initializes two objects

class Film
    
    attr_accessor :title, :opening_crawl#  sets the "setter" and "getter" methods
    @@all = [] #creates an empty array of the class items/class variable

    # instance method
    def initialize(film) #immediately assigns attributes to the objects when they are created
        @title = film['title'] #stores in the instance var
        @opening_crawl = film['opening_crawl'] #instance variables/only can be called within the method it resides in

        @@all << self #push/shovels each item from this method into the class array/class variable
    end
    
   #calling on the class
    def self.all #calling class method to display
        @@all #class variable/ returns all the data in the class variable
    end
end



