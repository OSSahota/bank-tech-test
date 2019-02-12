class Transaction

  attr_reader :trans_hist

  def initialize()
    @trans_hist = []
  end

  def save_transaction(transaction_details)
    trans_hist << transaction_details
  end
  
end
