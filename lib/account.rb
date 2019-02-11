class Account

  attr_reader :balance, :trans_hist

  def initialize()
      @balance = 0
      @trans_hist = []
  end

  def deposit(date,amount)
    update_balance(amount)
  end

  def withdraw(date,amount)
    amount = amount * -1
    update_balance(amount)
  end

  def update_balance(amount)
    @balance =+ amount
  end

  # if amount != 0
#     # if it's a negative amount then it's a debit trans, else a credit trans
    # add_transaction(amount)
#     @balance
#   end
  #
  # def add_transaction(amount)
  #   date = Time.now.strftime("%d/%m/%Y")
  #   credit_debit = amount < 0 ? "|" + (amount * -1).to_s : amount.to_s + "|"
  #   trans = ""
  #   # p "trans var in add_transaction method"
  #   trans = date + "|" + credit_debit + "|" + balance.to_s
  #   p trans
  #   @trans_hist << trans
  #   # p "@trans_hist var in add_transaction method"
  #   # p @trans_hist
  # end
  #
  # def print_statement
  #   p "print_statement"
  #   p "date|credit|debit|balance"
  #   p @trans_hist
  # end

end
