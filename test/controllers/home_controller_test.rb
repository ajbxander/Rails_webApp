require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select 'title', 'CSZone'
    assert_select 'h1', 'CSZone'
    assert_select 'p', 'Welcome to CSZone!'
  end
  
  test "should get contact" do
    get :contact
    assert_response :success
    
    assert_template layout: 'application'
    
    assert_select 'title', 'CSZone'
    assert_select 'h1', 'Contact us'
  end
  
  test "should post request contact but no email" do
    post :request_contact
    
    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end
  
  test "should post request contact" do
    post :request_contact,
      name: "Alex", email: "alex@email.com",
      telephone: "1234567890", message: "Test"
      
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end
  
end

