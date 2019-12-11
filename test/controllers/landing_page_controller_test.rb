require 'test_helper'

class LandingPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get landing_page_index_url
    assert_response :success
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_template layout: 'application'
    assert_select 'title', 'Adorapet'
    assert_select 'h1', 'Contact Me'
    assert_select 'p', 'Fill out the form to send me a question or feedback.'
    end
end
