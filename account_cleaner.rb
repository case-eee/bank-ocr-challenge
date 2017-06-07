module AccountCleaner
  private

  def characters_to_rows(digit_characters)
    digit_characters.split("\n")
  end

  def digit_characters_to_number(input)
    digit_rows = convert_to_digits(replace_new_lines(input))
    digits = construct_digits(digit_rows)

    convert_to_human_digits(digits)
  end

  def replace_new_lines(input)
    input.flatten.join().gsub("\n", "")
  end

  def convert_to_digits(digit_pieces)
    digit_pieces.chars.each_slice(3).to_a.each_slice(9).to_a
  end

  def construct_digits(digit_rows)
    digit_rows.first.zip(digit_rows[1], digit_rows[-1])
  end

  def character_digit_to_string(digit)
    digit.flatten.join("")
  end
end
