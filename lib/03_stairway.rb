def launch_dice
  dice = rand(1..6)
  return dice
end

def monter(marche,dice)
  marche += 1
  puts "Bravo, tu as fait un #{dice} tu montes d'une marche !"
  return marche
end

def rester(dice)
  puts "Tu as fais un #{dice}, restes la où tu es."
end

def descendre(marche,dice)
  if marche != 0
    marche -= 1
    puts "Dommage, tu as fais un #{dice} tu descends d'une marche"
  else
    puts "Dommage, tu as fais un #{dice} tu reste au pied de l'escalier"
  end
  return marche
end

def jeu
  puts "Le jeu blabla"
  marche = 0
  tours = 0
  while marche != 10
    dice = rand(1..6)
    if dice == 1
      marche = descendre(marche,dice)
    elsif dice > 4
      marche = monter(marche,dice)
    else
      rester(dice)
    end
    puts "Tu es sur la marche #{marche}."
    tours += 1
  end
  puts "C GG !"
  return tours
end

def average_finish_time
  tours = 0
  100.times do
    tours = jeu + tours
  end
  puts"Le nombre de tours moyen est de #{tours/100} tours."
end

average_finish_time


