require 'test_helper'
class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', :minimum => 12
    assert_select '#sites .entry', 3
    assert_select 'h3', 'Project Management'
  end

end
