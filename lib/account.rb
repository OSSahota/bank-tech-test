require_relative 'transaction.rb'

class Account

  attr_reader :balance,
              :current_trans

  def initialize(transaction = Transaction.new)
      @balance = 0
      @current_trans = []
      @transaction = transaction
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

  def print_statement
    puts "date" + (" " * 6) + "||credit||debit||balance"

    # @transaction.trans_hist is...
    # an array of arrays with each nested array containig a hash representing one transaction
    # e.g. [[{ date:"11/02/2019", credit:100, debit:"", balance:100 }],[{ date:, credit:"", debit:25, balance:75 }]]

    # iterating through the main/outer array so that's each nested array
    @transaction.trans_hist.each do |nested_array|
      # now iterating though the hash within the nested array
      nested_array.each do |key,value|
        # p date = key[:date]
        # p credit  = key[:credit]
        # p debit = key[:debit]
        # p balance = key[:balance]
        # output the value for each key as one string in the format specfied below
        puts key[:date] + "||" + "#{key[:credit]}" + "||" + "#{key[:debit]}" + "||" + "#{key[:balance]}"
      end
    end
  end

  private

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

end
