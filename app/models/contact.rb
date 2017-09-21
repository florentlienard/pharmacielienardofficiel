class Contact < ApplicationRecord
  validates :first_name, presence: true, allow_blank: false
  validates :last_name, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false
  validates :comment, presence: true, allow_blank: false

  after_create :send_new_message_email

    private

  def send_new_message_email
    ContactMailer.new_message(self).deliver_now
  end
end
