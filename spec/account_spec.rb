require 'account.rb'

describe Account do

  let(:account) {Account.new()}

  context "#deposit" do
    it "amount deposited" do
      expect(account.deposit(100)).to eq(100)
    end

    it "amount increases balance by 300" do
      account.deposit(100)
      account.deposit(200)
      expect(account.balance).to eq(300)
    end
  end

  context "#withdraw" do
    it "amount withdrawn" do
        account.deposit(200)
        expect(account.withdraw(50)).to eq(150)
    end
  end

end
