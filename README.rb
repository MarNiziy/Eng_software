1################
n = 1

while n <= 10
  puts n
  n+= 1
end

until n > 10
  puts n
  n+= 1
end

for n in 1..10 do
  puts n
end

(1..10).each do |n|
  puts n
end


2###########
def upcase_srting(str)
  str.each_char do |c|
    puts c.upcase
  end
end

def downcase_srting(str)
  str.each_char do |c|
    puts c.downcase
  end
end

3###############
arr = [3, 5, 9, 34]

arr.each_with_index do |el, i|
  puts "#{el} -> #{i}"
end

4#######Написать аналоги first and last для строк и для массивов
class Array
  def my_first
    self[0]
  end

  def my_last
    self[-1]
  end
end

class String
  def my_first
   arr_char = self.split(//)
   arr_char[0]
  end

  def my_last
   arr_char = self.split(//)
   arr_char[-1]
  end
end

5#########Программа для сравнения двух строк
def match_string(str_1, str_2)
  return if str_1.size != str_2.size

  arr_char_1 = str_1.split(//)
  arr_char_2 = str_2.split(//)

  n = 0

  while n <= str_1.size
    if arr_char_1[n] != arr_char_2[n]
      return false
    else
     n+= 1
    end
  end

  true
end

6#########

def day_translation(day) 
  day_week = if day == 'Monday'
              'понедельник'
            elsif day == 'Tuesday'
              'вторник'
            elsif day == 'Wednesday'
              'среда'
            elsif day == 'Thursday'
              'четверг'
            elsif day == 'Friday'
              'пятница'
            elsif day == 'Saturday'
              'суббота'
            elsif day == 'Sunday'
              'воскресенье'
            end
end

def day_translation(day) 
  day_week = case day
             when 'Monday'
              'понедельник'
             when 'Tuesday'
              'вторник'
             when 'Wednesday'
              'среда'
             when 'Thursday'
              'четверг'
             when 'Friday'
              'пятница'
             when 'Saturday'
              'суббота'
             when 'Sunday'
              'воскресенье'
             else
              'такого дня нет'
             end
end

7#######
n = 1

while n < 10
  puts "#{n} x 3 = #{n * 3}"
  n+= 1
end

until n == 10
  puts "#{n} x 3 = #{n * 3}"
  n+= 1
end

for n in 1..9 do
  puts "#{n} x 3 = #{n * 3}"
end

(1..9).each do |n|
  puts "#{n} x 3 = #{n * 3}"
end

8#####
n = 1

while n <= 5
  puts '*' * n
  n+= 1
end

17#######
def dictionary(char)
  arr = ["apple", "banana", "age", "orange", "foo", "rock and roll", "green", "michelle", "krd", "art"]
  arr.select do |w|
    w[0] == char
  end
end

18#######
class String
  def my_revers
    medium = self.size / 2
    medium.times do |a| 
      self[a], self[-a-1] = self[-a-1], self[a]
    end
    self
  end
end
