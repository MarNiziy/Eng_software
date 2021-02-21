
def pr2 
   puts "Введите 1 число"
   first_value = gets.to_i
   
   puts "Введите 2 число"
   second_value = gets.to_i
   
   puts "Введите 3 число"
   third_value = gets.to_i
   
   puts "Введите 4 число"
   fourth_value = gets.to_i
  
    if (first_value == 20) || (second_value == 20) || (third_value == 20) || (fourth_value == 20)
        puts 20
    else
       puts (first_value + second_value + third_value + fourth_value)
    end
end
   
pr2