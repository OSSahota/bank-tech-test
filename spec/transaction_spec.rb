require 'transaction.rb'

describe Transaction do
  let(:date) { "11/02/2019" }

  # this example doesn't make a diff to coverage stats but keeping in
  context "#initialize" do
    it "has an empty transaction history" do
      expect(subject.trans_hist).to eq([])
    end
  end

  # this example doesn't make a diff to coverage stats but keeping in
  context "#save_transaction" do
    it "saves current transaction to history" do
      transaction_details = { date: date, credit: 100, debit: 0, balance: 100 }
      allow(subject).to receive(:save_transaction).and_return(transaction_details)
    end
  end

end
