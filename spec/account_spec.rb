require 'account.rb'

describe Account do
  # subject{ Account.new }
  let(:date) { "11/02/2019" }

  context "#initialize" do
    it "has a zero balance" do
      expect(subject.balance).to eq(0)
    end
  end

  context "#deposit" do
    it "on a given date balance increases by the amount deposited" do
      expect{ subject.deposit(date,100) }.to change{ subject.balance }.by(100)
    end
  end

  context "#withdraw" do
    it "on a given date balance decreases by the amount withdrawn" do
        expect{ subject.withdraw(date,100) }.to change{ subject.balance }.by(-100)
    end
  end

  context "#transaction" do
    it "collects the new transaction details" do
      transaction_details = { date: date, credit: 100, debit: 0, balance: 100 }
      expect(subject.new_transaction(transaction_details)).to eq([transaction_details])
    end
  end

  # context "#statement" do
  #   it "prints heading" do
  #     expect(subject.print_statement).to eq("date" + (" " * 6) + "|credit|debit|balance")
  #   end
  #
  #   it "prints transaction" do
  #     expect(subject.print_statement).to be_a Array
  #     # transaction_details = ["01/02/2019"|100|0|100]
  #     # allow(subject).to receive(:print_statement).and_return(transaction_details)
  #
  #   end
  # end

end
