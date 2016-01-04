require 'test_helper'

class ZettaDeviceRegistrationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get zetta_device_registrations_show_url
    assert_response :success
  end

end
