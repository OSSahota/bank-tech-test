require_relative 'transaction.rb'

class Account

  attr_reader :balance,
              :current_trans

  def initialize(transaction = Transaction.new)
      @transaction = transaction
      @balance = 0
      @current_trans = []
  end

  def deposit(date,amount)
    update_balance(amount)
    transaction_details = { date: date, credit: amount, debit: '', balance: @balance }
    new_transaction(transaction_details)
    update_transaction_history
  end

  def withdraw(date,amount)
    update_balance(amount * -1)
    transaction_details = { date: date, credit: '', debit: amount, balance: @balance }
    new_transaction(transaction_details)
    update_transaction_history
  end

  def update_balance(amount)
    @balance += amount
  end

  def new_transaction(transaction_details)
    @current_trans = []
    @current_trans << transaction_details
  end

  def update_transaction_history
    @transaction.save_transaction(@current_trans)
  end

  def print_statement
    puts "date" + (" " * 6) + "||credit||debit||balance"
    # @transaction.trans_hist
    @transaction.trans_hist.each do |nested_array|
      nested_array.each do |key,value|
        # p date = key[:date]
        # p credit  = key[:credit]
        # p debit = key[:debit]
        # p balance = key[:balance]
        puts key[:date] + "||" + "#{key[:credit]}" + "||" + "#{key[:debit]}" + "||" + "#{key[:balance]}"
      end
    end
  end

end
