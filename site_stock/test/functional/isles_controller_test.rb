require 'test_helper'

class IslesControllerTest < ActionController::TestCase
  setup do
    @isle = isles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:isles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create isle" do
    assert_difference('Isle.count') do
      post :create, :isle => { :NOMBRE_ISLA => @isle.NOMBRE_ISLA }
    end

    assert_redirected_to isle_path(assigns(:isle))
  end

  test "should show isle" do
    get :show, :id => @isle
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @isle
    assert_response :success
  end

  test "should update isle" do
    put :update, :id => @isle, :isle => { :NOMBRE_ISLA => @isle.NOMBRE_ISLA }
    assert_redirected_to isle_path(assigns(:isle))
  end

  test "should destroy isle" do
    assert_difference('Isle.count', -1) do
      delete :destroy, :id => @isle
    end

    assert_redirected_to isles_path
  end
end
