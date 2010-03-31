class EmailerController < ApplicationController
  def send_mail
    name = params[:email][:name]
    email = params[:email][:email]
    subject = params[:email][:subject]
    message = params[:email][:message]
    Emailer.deliver_contact(name, email, subject, message)
    redirect_to :back
  end
end
