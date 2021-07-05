# frozen_string_literal: true

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "sidekiq/testing"
Sidekiq::Testing.fake!

require "mocha/minitest"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  # Devise test helpers
  include Warden::Test::Helpers
  Warden.test_mode!

  # Validations test helpers
  def assert_invalid(record, options)
    assert_predicate record, :invalid?

    options.each do |attribute, message|
      assert record.errors.details[attribute].any? { |hash| hash[:error] == message },
             "Expected #{attribute} to have the following error: #{message}"
    end
  end
end
