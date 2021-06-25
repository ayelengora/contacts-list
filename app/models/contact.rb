class Contact < ApplicationRecord

  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.frezze,
    message: "only allows real emails" }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
end
