require 'test_helper'

class TestResultsControllerTest < ActionController::TestCase
  setup do
    @test_result = test_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_result" do
    assert_difference('TestResult.count') do
      post :create, test_result: { notes: @test_result.notes, result: @test_result.result, test_run_id: @test_result.test_run_id, testcase_id: @test_result.testcase_id }
    end

    assert_redirected_to test_result_path(assigns(:test_result))
  end

  test "should show test_result" do
    get :show, id: @test_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_result
    assert_response :success
  end

  test "should update test_result" do
    patch :update, id: @test_result, test_result: { notes: @test_result.notes, result: @test_result.result, test_run_id: @test_result.test_run_id, testcase_id: @test_result.testcase_id }
    assert_redirected_to test_result_path(assigns(:test_result))
  end

  test "should destroy test_result" do
    assert_difference('TestResult.count', -1) do
      delete :destroy, id: @test_result
    end

    assert_redirected_to test_results_path
  end
end
