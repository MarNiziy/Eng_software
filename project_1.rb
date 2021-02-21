
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts "Введите ваше имя"
name = gets.chomp

puts "Введите вашу фамилию"
surname = gets.chomp

puts "Введите вашу возраст"
age = gets.to_i

def gree1(name,surname,age)
    
    if age < 18
  puts "Привет,#{name} #{surname}. Тебе меньше 18 лет, но начать учиться программировать никогда не поздно:)"
    else
  puts "Привет,#{name} #{surname}. Самое время заняться делом!"
    end
end

gree1(name,surname,age)



