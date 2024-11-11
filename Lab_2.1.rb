puts "Введите число и слово"
word = gets.split(" ")
w = word[1].downcase 

def pr3(w)
  if  (w[w.length-1] == "s" && w[w.length-2] == "c")
    puts 2 ** w.length
  else 
    puts w.reverse
  end
end

pr3(w)
