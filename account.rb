class Account
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def to_s
    self.number
  end
end
