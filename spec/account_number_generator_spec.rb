require 'spec_helper'
require './lib/account_number_generator'
require './lib/account_number_parser'

describe AccountNumberGenerator do
  let(:mock_account_number) { 1234 }
  let(:mock_number_parser) { double(AccountNumberParser) }
  let(:file) { double('accounts.txt') }

  subject { described_class.new(file) }

  it 'calls the AccountNumberParser' do
    allow(AccountNumberParser).to receive(:new).and_return mock_number_parser
    allow(mock_number_parser).to receive(:parse).and_return mock_account_number

    expect(subject.generate).to eq mock_account_number
  end
end
