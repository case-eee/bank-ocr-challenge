require_relative "../account_reader"
require_relative "../account"

describe AccountReader do
  describe "#convert_to_account_numbers" do
    it "converts an account from characters to a numeric number" do
      test_input = "    _  _     _  _  _  _  _ \n" +
                   "  | _| _||_||_ |_   ||_||_|\n" +
                   "  ||_  _|  | _||_|  ||_| _|\n" +
                   "\n"
      account = Account.new("123456789")
      account_reader = AccountReader.new(test_input)
      account_reader.convert_to_account_numbers
      expect(account_reader.final_numbers.first.number).to eq(account.number)
    end
  end
end
