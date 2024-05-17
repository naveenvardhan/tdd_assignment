class StringCalculator
  
  def add_numbers(string_numbers)
    nums = string_numbers.split(',').map(&:to_i)
    sum = nums.sum
    puts sum
  end
end


object = StringCalculator.new
puts object.add_numbers("")
puts object.add_numbers("1")
puts object.add_numbers("1,5")