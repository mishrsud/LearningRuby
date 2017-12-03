require_relative './palindrome_checker'
#
# Entry point
class Main
    pal_checker = PalindromeChecker.new
    puts pal_checker.get_binary_literal('abba')
end