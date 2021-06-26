class EditHistorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :phone_number, :email, :contact_id, :edit_date
end
