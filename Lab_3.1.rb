def files
	require 'fileutils'

	files = FileUtils.compare_file('D:\students.txt','D:\results.txt')
	@f_comp = files

	File.open('D:\students.txt', 'r') do |file|
		@file_data = file.readlines.map(&:chomp)
	end
   
	5.times do |x|
		puts "Введите возраст студента:"
		age = gets.to_i    
		if age == @file_data[x].split(" ")[2].to_i 
			File.write('D:\results.txt',@file_data[x].split("/n"), mode:"a")
		elsif age == -1 || @f_comp == true
			break
		end
	end
end

files
