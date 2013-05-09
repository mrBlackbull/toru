require 'test_helper'

class GroupProfilesControllerTest < ActionController::TestCase
  setup do
    @group_profile = group_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_profile" do
    assert_difference('GroupProfile.count') do
      post :create, group_profile: {  }
    end

    assert_redirected_to group_profile_path(assigns(:group_profile))
  end

  test "should show group_profile" do
    get :show, id: @group_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_profile
    assert_response :success
  end

  test "should update group_profile" do
    put :update, id: @group_profile, group_profile: {  }
    assert_redirected_to group_profile_path(assigns(:group_profile))
  end

  test "should destroy group_profile" do
    assert_difference('GroupProfile.count', -1) do
      delete :destroy, id: @group_profile
    end

    assert_redirected_to group_profiles_path
  end
end
