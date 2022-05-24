
# Сторона 1
puts "Введите первую сторону треугольника"
side_1 = gets.to_f

# Сторона 2
puts "Введите вторую сторону треугольника"
side_2 = gets.to_f

# Сторона 3
puts "Введите третью сторону треугольника"
side_3 = gets.to_f

# Равносторонний?
if side_1 == side_2 && side_1 == side_3 && side_2 == side_3
	equal_sides = true
else
	equal_sides = false
end

# Равнобедренный?
if (side_1 == side_2 && side_1 != side_3) || (side_1 == side_3 && side_1 != side_2)
	two_side_equal = true
elsif (side_2 == side_3 && side_2 != side_1) || (side_2 == side_1 && side_2 != side_3)
	two_side_equal = true
elsif (side_3 == side_1 && side_3 != side_2) || (side_3 == side_2 && side_3 != side_1)
	two_side_equal = true
else
	two_side_equal = false
end

# Прямоугольный?
if (side_1 > side_2 && side_1 > side_3) && (side_1**2 == side_2**2+side_3**2)
	perpendicular = true
elsif (side_2 > side_1 && side_2 > side_3) && (side_2**2 == side_1**2+side_3**2)
	perpendicular = true
elsif (side_3 > side_1 && side_3 > side_2) && (side_3**2 == side_1**2+side_2**2)
	perpendicular = true
else
	perpendicular = false
end

if equal_sides
	puts "Треугольник равносторонний"
elsif two_side_equal
	puts "Треугольник равнобедренный"
elsif two_side_equal && perpendicular
	puts "Треугольник равнобедренный и прямоугольный"
elsif perpendicular
	puts "Треугольник прямоугольный"
end

	