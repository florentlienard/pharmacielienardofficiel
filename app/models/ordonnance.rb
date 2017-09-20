class Ordonnance < ApplicationRecord
  validates :first_name, presence: true, allow_blank: false
  validates :last_name, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false
  validates :social_number, presence: true, allow_blank: false
  #validates :photo, presence: true, allow_blank: false
end
