require 'test_helper'

class IpTypesControllerTest < ActionController::TestCase
  setup do
    @ip_type = ip_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ip_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ip_type" do
    assert_difference('IpType.count') do
      post :create, :ip_type => { :DESCRIPCION => @ip_type.DESCRIPCION }
    end

    assert_redirected_to ip_type_path(assigns(:ip_type))
  end

  test "should show ip_type" do
    get :show, :id => @ip_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ip_type
    assert_response :success
  end

  test "should update ip_type" do
    put :update, :id => @ip_type, :ip_type => { :DESCRIPCION => @ip_type.DESCRIPCION }
    assert_redirected_to ip_type_path(assigns(:ip_type))
  end

  test "should destroy ip_type" do
    assert_difference('IpType.count', -1) do
      delete :destroy, :id => @ip_type
    end

    assert_redirected_to ip_types_path
  end
end
