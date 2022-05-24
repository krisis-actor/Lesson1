# Имя пользователя
puts "Укажите ваше имя"
name = gets.chomp.capitalize

# Рост пользователя
puts "Укажите ваш рост"
height = gets.to_f.round()

# Идеальный вес
goal_weight = (height - 110)*1.15

if goal_weight < 0 
	puts "#{name}, ваш вес уже оптимальный"
end
