class EmailerController < ApplicationController
  def send_mail
    email = params[:email]
    name = email[:name]
    email = email[:email]
    subject = email[:subject]
    message = email[:message]
    Emailer.deliver_contact(name, email, subject, message)
    redirect_to :back
  end
end
