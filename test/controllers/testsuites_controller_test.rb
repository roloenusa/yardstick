require 'test_helper'

class TestsuitesControllerTest < ActionController::TestCase
  setup do
    @testsuite = testsuites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testsuites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testsuite" do
    assert_difference('Testsuite.count') do
      post :create, testsuite: { description: @testsuite.description, title: @testsuite.title }
    end

    assert_redirected_to testsuite_path(assigns(:testsuite))
  end

  test "should show testsuite" do
    get :show, id: @testsuite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testsuite
    assert_response :success
  end

  test "should update testsuite" do
    patch :update, id: @testsuite, testsuite: { description: @testsuite.description, title: @testsuite.title }
    assert_redirected_to testsuite_path(assigns(:testsuite))
  end

  test "should destroy testsuite" do
    assert_difference('Testsuite.count', -1) do
      delete :destroy, id: @testsuite
    end

    assert_redirected_to testsuites_path
  end
end
