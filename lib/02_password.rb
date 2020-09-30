def signup
  puts "Please register your password :"
  print "> "
  password = gets.chomp
  return password
end

def login(password)
  puts "Please enter yur password :"
  input = ""
  while password != input
  print "> "
  input = gets.chomp
  end
end

def welcome_screen
  puts "Coucou c'est moi l'écran de victoire !"
end

def perform
  password = signup
  login(password)
  welcome_screen
end

perform