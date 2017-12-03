require 'rspec'
require_relative '../src/palindrome_checker'

RSpec.describe PalindromeChecker do
  it 'Should return binary literal as expected' do
    pal = PalindromeChecker.new
    bin = pal.string_to_binary('a')
    expect(bin).to eq '1'
  end

  it 'Should return binary literal as expected' do
    pal = PalindromeChecker.new
    bin = pal.string_to_binary('z')
    expect(bin).to eq '0'
  end

  it 'Should get the expected binary literal' do
    pal = PalindromeChecker.new
    bin_literal = pal.get_binary_literal('abba')
    expect(bin_literal).to eq '1001'
  end

  it 'Should successfully check a palindrom' do
    pal = PalindromeChecker.new
    bin_lit = pal.get_binary_literal('abba')
    check = pal.check_palindrome(bin_lit)
    expect(check).to be true
  end
end