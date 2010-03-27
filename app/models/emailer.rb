class Emailer < ActionMailer::Base
  def contact()
    @name = "test"
    @subject = "test"
    @recipients = "sapthagiri269@gmail.com"
    @from = "sapthagirihere@gmail.com"
    @sent_on = Time.now
  end

end
