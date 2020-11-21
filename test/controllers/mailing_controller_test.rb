require 'test_helper'

class MailingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mailing_index_url
    assert_response :success
  end

end
