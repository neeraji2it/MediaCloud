class ContactMailer < ActionMailer::Base
  default from: "mediacloud.co.in"

  def comment_contact(name, email, subject, message)
    @name = name
    @email = email
    @subject = subject
    @message = message
    mail(:to =>"sneha.dodwad@gmail.com")
  end
end
