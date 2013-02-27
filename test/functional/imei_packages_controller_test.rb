require 'test_helper'

class ImeiPackagesControllerTest < ActionController::TestCase
  setup do
    @imei_package = imei_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imei_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imei_package" do
    assert_difference('ImeiPackage.count') do
      post :create, imei_package: { imei: @imei_package.imei, package_id: @imei_package.package_id }
    end

    assert_redirected_to imei_package_path(assigns(:imei_package))
  end

  test "should show imei_package" do
    get :show, id: @imei_package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imei_package
    assert_response :success
  end

  test "should update imei_package" do
    put :update, id: @imei_package, imei_package: { imei: @imei_package.imei, package_id: @imei_package.package_id }
    assert_redirected_to imei_package_path(assigns(:imei_package))
  end

  test "should destroy imei_package" do
    assert_difference('ImeiPackage.count', -1) do
      delete :destroy, id: @imei_package
    end

    assert_redirected_to imei_packages_path
  end
end
