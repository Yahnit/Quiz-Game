require 'test_helper'

class LifelinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lifeline = lifelines(:one)
  end

  test "should get index" do
    get lifelines_url
    assert_response :success
  end

  test "should get new" do
    get new_lifeline_url
    assert_response :success
  end

  test "should create lifeline" do
    assert_difference('Lifeline.count') do
      post lifelines_url, params: { lifeline: {  } }
    end

    assert_redirected_to lifeline_url(Lifeline.last)
  end

  test "should show lifeline" do
    get lifeline_url(@lifeline)
    assert_response :success
  end

  test "should get edit" do
    get edit_lifeline_url(@lifeline)
    assert_response :success
  end

  test "should update lifeline" do
    patch lifeline_url(@lifeline), params: { lifeline: {  } }
    assert_redirected_to lifeline_url(@lifeline)
  end

  test "should destroy lifeline" do
    assert_difference('Lifeline.count', -1) do
      delete lifeline_url(@lifeline)
    end

    assert_redirected_to lifelines_url
  end
end
