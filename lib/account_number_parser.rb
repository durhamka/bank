class AccountNumberParser
  ENTRY_LENGTH = 4
  DIGIT_MAPPINGS = {
    " _ | ||_|   " => 0,
    "     |  |   " => 1,
    " _  _||_    " => 2,
    " _  _| _|   " => 3,
    "   |_|  |   " => 4,
    " _ |_  _|   " => 5,
    " _ |_ |_|   " => 6,
    " _   |  |   " => 7,
    " _ |_||_|   " => 8,
    " _ |_| _|   " => 9
  }

  def initialize(file)
    @file = file
  end

  def parse(file)
    file.split('\n').each_slice(ENTRY_LENGTH).map do |line|
      read(line)
    end
  end

  private
  attr_reader :file

  def read(line)
    #map through the line and grab first 3 lines of the entry
    #map through new arrays and call map_to_digit with the string
  end

  def map_to_digit(string)
    DIGIT_MAPPINGS[string]
  end
end
