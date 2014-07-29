def roman_numerals(input)
  result = ""
  # result = []

  roman_numeral_key = {1 => "I", 4 => "IV", 5 => "V", 9 => "IX", 10 => "X", 40 => "XL", 50 => "L", 90 => "XC", 100 => "C", 400 => "CD", 500 => "D", 900 => "CM", 1000 => "M"}

  new_roman_numeral_key = Hash[roman_numeral_key.to_a.reverse]

    if input > 3999
      result = "Roman numerals not available above 3999"
    elsif input > 0
      new_roman_numeral_key.each do |number, roman_numeral|
        if input >= number
          result << roman_numeral
          input -= number
          redo
        end
      end
    end
print result
end
puts roman_numerals(3999)

