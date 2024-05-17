class StringCalculator
  
  def add_numbers(string_numbers)
    string_numbers = string_numbers.sub("\n", ",")
    nums = string_numbers.split(',').map(&:to_i)
    negative_nums = nums.select{|i| i < 0 }
    raise "Negative numbers are not allowed #{negative_nums.join(',')}" if negative_nums.any?
    sum = nums.sum
    sum
  end
end


object = StringCalculator.new
puts object.add_numbers("")
puts object.add_numbers("1")
puts object.add_numbers("1,5")
# allowing multiple numbers
puts object.add_numbers("1,5,4,6")
# handling new lines
puts object.add_numbers("1\n2,3")

# support different delimiters
puts object.add_numbers("//;\n1;2")

# negative numbers
puts object.add_numbers("1,5,4,-1,-2")
