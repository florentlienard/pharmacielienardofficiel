class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.new_message.subject
  #
  def new_message(contact)
    @contact = contact

        mail(
      to:       'contact@pharmacielienard.fr',
      subject:  "@contact.first_name @contact.last_name vient d'envoyer un message"
    )
  end
end
