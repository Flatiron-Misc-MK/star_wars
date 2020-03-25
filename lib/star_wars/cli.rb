
class CLI
  
  
    def start
     self.welcome
     self.get_list
   end
   
   def welcome
     puts "Welcome to The Massive Star Wars Information List"
     sleep(2)
     puts "Please pick an item from below for more information"
    
   end
 
   
   def get_list
     API.get_categories
     #calling api to get list
   end
 
 end