require 'spec_helper'

describe AccountNumberParser do
  subject { described_class.new(file) }

  context 'when the file is valid' do
    let(:file) do
      <<-NUMBER.chomp
         _ 
        | |
        |_|
      NUMBER
    end

    it 'returns the corresponding account number' do
      expect(subject.parse).to eq 0
    end
  end

  context 'when the file is invalid' do
  end
end
