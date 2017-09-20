class Ordonnance < ApplicationRecord

  validates :first_name, presence: true, allow_blank: false
  validates :last_name, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false
  validates :social_number, presence: true, allow_blank: false
  #validates :photo, presence: true, allow_blank: false

  after_create :send_new_ordo_email

    private

  def send_new_ordo_email
    OrdonnanceMailer.new_ordo(self).deliver_now
  end
end
