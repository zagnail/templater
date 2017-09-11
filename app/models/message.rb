class Message < ApplicationRecord
  attr_accessor :account_columns

  after_initialize :create_account_columns
  after_find :create_account_columns

  def create_account_columns
    @account_columns = Account.columns.map { |c| c.name }
  end

  def put_account_data account
    @account_columns.each do |ac|
      account_method = account.method(ac)
      variable = account_method.call
      text["{{#{ac}}}"] = variable.to_s if text.include? "{{#{ac}}}"
    end
  end

end
