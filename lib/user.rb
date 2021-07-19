require "pry"

class User 
  attr_writer :mastercard
  attr_reader :birthdate
  attr_accessor :email
  @@user_count = 0 #Initialisation de la variable avec le nombre d'utilisateurs

  def initialize(email_to_save)
    @email = email_to_save
    puts "On envoir un email de bienvenue !"
    @@user_count = @@user_count + 1
  end

  def self.count
    return @@user_count
  end

  def update_birthdate(birthdate_to_update)
    @birthdate = birthdate_to_update
  end
  
  def read_mastercard
    return @mastercard
  end

  def greet
    puts "Hello world "
  end 

  def say_hello_to_someone(first_name)
    puts "Bonjour, #{first_name} !"
  end

  def show_itself
    print "voici l'instance :"
    puts self
  end

  def update_email(email_to_update)
    @email = email_to_update
  end

  def read_email
    return @email
  end

end #fin de ma classe 

binding.pry
puts "end of file"