class PagesController < ApplicationController
  def choose
    @accounts = Account.all
    @messages = Message.all
  end

  def sent
    account = Account.find(params[:account])
    @message = Message.find(params[:message])
    @message.put_account_data account
    @message
  end

end
