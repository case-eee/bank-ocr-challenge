module AccountViewer
  def self.display_accounts(accounts)
    accounts.each { |account| puts account }
  end
end
