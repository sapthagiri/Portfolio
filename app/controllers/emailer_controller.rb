class EmailerController < ApplicationController
  def send_mail
    mail = params[:mailer]
    name = mail[:name]
    email = mail[:email]
    subject = mail[:subject]
    message = mail[:message]
    Emailer.deliver_contact(name, email, subject, message)
    redirect_to :back
  end
end
