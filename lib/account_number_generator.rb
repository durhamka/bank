class AccountNumberGenerator
  def initialize(file)
    @file = file
  end

  def generate
    account_number = AccountNumberParser.new.parse(file)
  end

  private
  attr_reader :file
end
