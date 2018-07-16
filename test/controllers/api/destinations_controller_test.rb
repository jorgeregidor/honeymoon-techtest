require 'test_helper'

class Api::DestinationsControllerTest < ActionDispatch::IntegrationTest
  test "GET /api/destinations works" do
    get api_destinations_url

    assert_response 200
    assert_same_elements Destination.all.map(&:to_h), response
  end

  test "GET /api/destination/123 works" do
    destination = destinations(:barcelona)
    get api_destination_url(destination)

    assert_response 200
  end

  private

  def response
    @parsed_response ||= JSON.parse(@response.body, symbolize_names: true)
  end
end
