class EmailerController < ApplicationController
  def send_mail
    #email = params[:email]
    #name = email[:name]
    #email = email[:email]
    #subject = email[:subject]
    #message = email[:message]
    Emailer.deliver_contact()
    redirect_to :back
  end
end
