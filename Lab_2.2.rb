def pr4 
	puts "Сколько покемонов добавить?"
  k = gets.to_i

  pokemon = []
  i = 0

  k.times do 
		puts "Введите имя покемона"
		name = gets.chomp
		puts "Введите цвет покемона"
		color = gets.chomp
	  pokemon.append({'name '=> name, 'color ' => color})
  end
  puts pokemon
end

pr4

