def half_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  etage = gets.chomp.to_i

  nb = 1

  puts "Voici la pyramide :"

  etage.times do
    nb.times do
      print "#"
    end
    nb = nb + 1
    puts  #pour passer à la ligne
  end
end

def ask
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  etage = gets.chomp.to_i
  puts "Voici la pyramide :"
  return etage
end



def full_pyramid(etage)
  n = etage
  for count in (1..etage)
    print " " * (n-1)
    print "#" * ((count*2)-1)
    puts
    n -= 1
  end
end





def wtf_pyramid(etage)
  full_pyramid(etage)
  etage_inf = etage - 1
  for count in (1...etage)
    print " " * count
    print "#" * ((etage_inf*2)-1)
    puts
    etage_inf -= 1
  end
end

def perform
  etage = ask
  wtf_pyramid(etage)
end

perform