require_relative "digit_recognizer"
require_relative "account_parser"
require_relative "account_cleaner"
require_relative "account"

class AccountReader
  include AccountCleaner

  attr_reader :final_numbers

  def initialize(input)
    @character_numbers = characters_to_rows(input)
    @final_numbers = []
  end

  def convert_to_account_numbers
    account_number_in_characters.map { |digit_breakdown| final_numbers << Account.new(digit_characters_to_number(digit_breakdown)) }
  end

  private

  def account_number_in_characters
    @character_numbers.each_slice(4).to_a
  end

  def convert_to_human_digits(digits)
    final_account_number = ""
    digits.each do |digit|
      numerical_digit = DigitRecognizer::CONVERSION[character_digit_to_string(digit)]
      final_account_number += numerical_digit if numerical_digit
    end
    final_account_number
  end
end
