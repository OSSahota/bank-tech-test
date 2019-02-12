require 'account.rb'

describe Account do
  let(:date) { "11/02/2019" }

  # this example doesn't make a diff to coverage stats but keeping in
  context "#initialize" do
    it "has a zero balance" do
      expect(subject.balance).to eq(0)
    end
  end

  # this example DOES make a diff to coverage stats
  context "#deposit" do
    it "on a given date balance increases by the amount deposited" do
      expect{ subject.deposit(date,100) }.to change{ subject.balance }.by(100)
    end
  end

  # this example DOES make a diff to coverage stats
  context "#withdraw" do
    it "on a given date balance decreases by the amount withdrawn" do
        expect{ subject.withdraw(date,100) }.to change{ subject.balance }.by(-100)
    end
  end

  # this example doesn't make a diff to coverage stats but keeping in
  # commented out as method converted to private method
  # context "#transaction" do
  #   it "collects the new transaction details" do
  #     transaction_details = { date: date, credit: 100, debit: 0, balance: 100 }
  #     expect(subject.new_transaction(transaction_details)).to eq([transaction_details])
  #   end
  # end

  context "#statement" do
    # this example doesn't make a diff to coverage stats but keeping in
    it "prints header" do
      # expect { my_method }.to output("my message").to_stdout
      expect{ subject.print_statement }.to output("date" + (" " * 6) + "||credit||debit||balance\n").to_stdout
    end

    # this example DOES make a diff to coverage stats
    it "prints transactions" do
      subject.deposit(date,100)
      expect{ subject.print_statement }.to output("date" + (" " * 6) + "||credit||debit||balance\n#{date}||100||||100\n").to_stdout
    end
  end

end
