class EditHistory < ApplicationRecord
  belongs_to :contact

  before_create :set_edit_date
  
  validates :edit_date, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i,
    message: "only allows real emails" }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true

  def set_edit_date
    self.edit_date = Date.today.to_date
  end
end
