class Account

  attr_reader :balance

  def initialize()
      @balance = 0
  end

  def deposit(amount)
      update_balance(amount)
  end

  def withdraw(amount)
    amount = amount * -1
    update_balance(amount)
  end

  def update_balance(amount)
    @balance += amount
  end

end
