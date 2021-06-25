class CreateEditHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :edit_histories do |t|
      t.date :edit_date
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.belongs_to :contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
