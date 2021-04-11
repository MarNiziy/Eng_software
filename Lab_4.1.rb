class CashMachine

	def init	
	 if File.exists?('D:\balance.txt') == true
		  file_data = File.read('D:\balance.txt')
		  @f = file_data.to_f
      else
      @f = 100.0
    end
	 puts "Ваш текущий баланс: #{@f}"	
	
	 loop do
      print 'Выберите действие для работы с балансом (D/W/B/Q):'
      act = gets.chomp.upcase || act = gets.chomp.downcase
      	
        if act == 'D' 
          self.deposit
          elsif act == 'W'
          self.withdraw
          elsif act == 'B'
          self.balance
          elsif act == 'Q'
          File.open('D:\balance.txt', "w") { |f| f.write "#{@f}" }
          break
        end
    end
  end
    
  def deposit
    print 'Введите сумму для депозита:'
    sum = gets.to_f
    if sum > 0
    @f = sum + @f
    	else puts "Ваша сумма должна быть больше нуля!"
    end	
    puts "Ваш баланс: #{@f}"
  end

  def withdraw
    print 'Введите сумму для снятия:'
    sum = gets.to_f
    if sum > 0 && sum <= @f
    @f = @f - sum
    	else puts "Ваша сумма не корректна!"
    end	
    puts "Ваш баланс: #{@f}"
  end

  def balance
    puts "Ваш текущий баланс: #{@f}"
  end
  
end

balance = CashMachine.new
balance.init
