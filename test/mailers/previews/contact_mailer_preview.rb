class ContactMailerPreview < ActionMailer::Preview
  def new_message
    contact = Contact.first
    ContactMailer.new_message(contact)
  end
end
