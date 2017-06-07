require_relative "../account"

describe Account do
  it "has a number" do
    account = Account.new("12345")
    expect(account.number).to eq("12345")
  end
end
