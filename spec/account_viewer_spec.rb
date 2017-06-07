require_relative "../account_viewer"
require_relative "../account"

describe AccountViewer do
  describe ".display_accounts" do
    accounts = [Account.new("12345"), Account.new("4444")]
    specify { expect { AccountViewer.display_accounts(accounts) }.to output("12345\n4444\n").to_stdout }
  end
end
