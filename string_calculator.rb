class StringCalculator
  
  def add_numbers(string_numbers)
    string_numbers = string_numbers.gsub(/[!@%&;\n*]/, ',')
    nums = string_numbers.split(',').map(&:to_i)
    negative_nums = nums.select{|i| i < 0 }
    raise "Negative numbers are not allowed #{negative_nums.join(',')}" if negative_nums.any?

    nums = nums.select{|i| i <= 1000}
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

# ignoring more than 1000
puts object.add_numbers("//;\n3;20,1002,2340")

# Delimiters can be of any length
puts object.add_numbers("//[***]\n1***2***3")

# Allow multiple delimiters
puts object.add_numbers("//[*][%]\n1*2%3")

# negative numbers
puts object.add_numbers("1,5,4,-1,-2")
