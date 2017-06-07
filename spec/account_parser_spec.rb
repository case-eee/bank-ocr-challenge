require_relative "../account_parser"

describe AccountParser do
  describe ".read" do
    it "returns a string of characters" do
      parsed_account_characters = "    _  _     _  _  _  _  _ \n  | _| _||_||_ |_   ||_||_|\n  ||_  _|  | _||_|  ||_| _|\n\n _  _  _  _  _  _  _  _  _ \n|_||_||_||_||_||_||_||_||_|\n _| _| _| _| _| _| _| _| _|\n \n\n"
      expect(AccountParser.read("lib/test_bank_input.txt")).to eq(parsed_account_characters)
    end
  end
end
