require 'test_helper'

class PackagesControllerTest < ActionController::TestCase
  setup do
    @package = packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package" do
    assert_difference('Package.count') do
      post :create, package: { action: @package.action, downloadPath: @package.downloadPath, forceUpdate: @package.forceUpdate, packageName: @package.packageName, packageNamePath: @package.packageNamePath, packageNotation: @package.packageNotation, versionNumber: @package.versionNumber }
    end

    assert_redirected_to package_path(assigns(:package))
  end

  test "should show package" do
    get :show, id: @package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package
    assert_response :success
  end

  test "should update package" do
    put :update, id: @package, package: { action: @package.action, downloadPath: @package.downloadPath, forceUpdate: @package.forceUpdate, packageName: @package.packageName, packageNamePath: @package.packageNamePath, packageNotation: @package.packageNotation, versionNumber: @package.versionNumber }
    assert_redirected_to package_path(assigns(:package))
  end

  test "should destroy package" do
    assert_difference('Package.count', -1) do
      delete :destroy, id: @package
    end

    assert_redirected_to packages_path
  end
end
