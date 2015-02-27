class ContactMailer < ActionMailer::Base
  default from: "mediacloud3@gmail.com"

  def comment_contact(name, email, subject, message)
    @name = name
    @email = email
    @subject = subject
    @message = message
    mail(:to =>"crystal.badu@gmail.com", :subject => "Contact Information")
  end
end
