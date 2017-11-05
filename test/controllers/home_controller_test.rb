require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end
  
  test "should get contact" do
    get :contact
    assert_response :success
    
    assert_template layout: 'application'
    
    assert_select 'title', 'CSZone'
    assert_select 'h1', 'Home of Computer Science content.'
    
  end
    
end
