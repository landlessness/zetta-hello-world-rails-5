require 'test_helper'

class ZettaDeviceProxiesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get zetta_device_proxies_show_url
    assert_response :success
  end

end
