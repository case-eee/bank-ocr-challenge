require_relative "../digit_recognizer"

describe "DigitRecognizer" do
  it "returns the correct corresponding digit" do
    four_in_characters = "   " +
                         "|_|" +
                         "  |"

    expect(DigitRecognizer::CONVERSION[four_in_characters]).to eq("4")
  end

  it "returns nil if the digit is not found" do
    four_in_characters = "|||" +
                         "|_|" +
                         "  |"

    expect(DigitRecognizer::CONVERSION[four_in_characters]).to eq(nil)
  end
end
