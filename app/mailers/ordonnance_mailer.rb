class OrdonnanceMailer < ApplicationMailer

def new_ordo(ordonnance)
    @ordonnance = ordonnance  # Instance variable => available in view

    mail(to: 'contact@pharmacielienard.fr', subject: 'Welcome to Le Wagon')
    # This will render a view in `app/views/user_mailer`!

    mail(
      to:       'contact@pharmacielienard.fr',
      subject:  "Une nouvelle ordonnance vient d'être envoyée"
    )
  end
end
