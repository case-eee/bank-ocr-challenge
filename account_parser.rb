module AccountParser
  def self.read(file_name)
    account_numbers = ""
    File.open(file_name).each do |line|
      account_numbers += line
    end
    account_numbers
  end
end
