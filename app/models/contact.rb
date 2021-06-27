class Contact < ApplicationRecord
  has_many :edit_histories, dependent: :destroy

  before_update :register_changes

  
  validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i,
    message: "only allows real emails" }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true

  accepts_nested_attributes_for :edit_histories

  private

  def register_changes
    EditHistory.create(self.attributes)
  end
end
