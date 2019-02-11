require 'account.rb'

describe Account do
  # subject{ Account.new }
  let(:date) { "11/02/2019" }

  context "#initialize" do
    it "has a zero balance" do
      expect(subject.balance).to eq(0)
    end

    it "has an empty transaction history" do
      expect(subject.trans_hist).to eq([])
    end
  end

  context "#deposit" do
    it "on a given date balance increases by the amount deposited" do
      expect{ subject.deposit("11/02/2019",100) }.to change{ subject.balance }.by(100)
    end
  end

  context "#withdraw" do
    it "on a given date balance decreases by the amount withdrawn" do
        expect{ subject.withdraw(date,100) }.to change{ subject.balance }.by(-100)
    end
  end



  # context "#trans_hist" do
  #   # date = Time.now.strftime("%d/%m/%Y")
  #
  #   it "empty on initialization" do
  #     expect(subject.trans_hist).to be_empty
  #   end
  #
  #   it "stores credit transaction" do
  #     subject.deposit(1000)
  #     expect(subject.balance).to eq(1000)
  #     expect(subject.trans_hist).to eq(["11/02/2019|1000||1000"])
  #   end
  #
  #   it "stores debit transaction" do
  #     subject.withdraw(500)
  #     expect(subject.balance).to eq(-500)
  #     expect(subject.trans_hist).to eq(["11/02/2019||500|-500"])
  #   end
  # end
  #
  # context "#statement" do
  #   it "print" do
  #     subject.deposit(1000)
  #     expect(subject.print_statement).to be_a Array
  #   end
  # end
end
