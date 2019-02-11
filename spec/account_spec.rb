require 'account.rb'

describe Account do

  let(:account) {Account.new()}

  context "#deposit" do
    it "amount deposited" do
        expect(account.deposit(1000)).to eq(1000)
    end

    it "deposit amount is not negative" do
        expect(account.deposit(-1)).to be >=(0)
    end

    # it "amount increases balance" do
    # end
  end

  context "#withdraw" do
    it "amount withdrawn" do
        expect(account.withdraw(500)).to eq(500)
    end

    # it "amount decreases balance" do
    # end
  end

end
