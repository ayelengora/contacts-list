# frozen_string_literal: true

require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest

  setup do
  end

  test "should get root" do
    get "/"

    assert_response :success
  end

end
