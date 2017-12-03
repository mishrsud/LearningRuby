#
# Converts a string literal to its equivalent binary literal
class PalindromeChecker
  def check_palindrome(string)
    reversed = string.reverse
    reversed == string
  end

  def get_binary_literal(string)
    string_array = string.split('')
    bin_literal = ''
    string_array.each do |s|
      bin_literal += string_to_binary(s)
    end

    bin_literal
  end

  def string_to_binary(string)
    case string
    when 'a', 'e', 'i', 'o', 'u'
        then return '1'
    else
      '0'
    end
  end
end

# "This is the bee's knees".scan /\w/
#
