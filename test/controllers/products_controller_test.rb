# frozen_string_literal: true

require "test_helper"

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    
    @contacts_params = {
      first_name: "user_first_name",
      last_name: "Solid old table made of wood",
      email: "user1@email.com",
      phone_number: "234567876543",
    }
  end

  test "should get new_contacts" do
    get "/contacts/new"

    assert_response :success
  end

end
