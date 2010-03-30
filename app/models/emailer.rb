class Emailer < ActionMailer::Base
  def contact(name, email, subject, message)
    @name = name
    @subject = subject
    @recipients = "sapthagiri269@gmail.com"
    @from = email
    @sent_on = Time.now
  end

end
