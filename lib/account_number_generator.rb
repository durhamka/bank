class AccountNumberGenerator
  def initialize(file)
    @file = file
  end

  def generate
    account_number = AccountNumberParser.new(file).parse
  end

  private
  attr_reader :file
end
