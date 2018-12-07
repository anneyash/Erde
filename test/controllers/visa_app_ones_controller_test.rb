require 'test_helper'

class VisaAppOnesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visa_app_one = visa_app_ones(:one)
  end

  test "should get index" do
    get visa_app_ones_url
    assert_response :success
  end

  test "should get new" do
    get new_visa_app_one_url
    assert_response :success
  end

  test "should create visa_app_one" do
    assert_difference('VisaAppOne.count') do
      post visa_app_ones_url, params: { visa_app_one: { q1: @visa_app_one.q1, q2: @visa_app_one.q2, q3: @visa_app_one.q3, q4: @visa_app_one.q4 } }
    end

    assert_redirected_to visa_app_one_url(VisaAppOne.last)
  end

  test "should show visa_app_one" do
    get visa_app_one_url(@visa_app_one)
    assert_response :success
  end

  test "should get edit" do
    get edit_visa_app_one_url(@visa_app_one)
    assert_response :success
  end

  test "should update visa_app_one" do
    patch visa_app_one_url(@visa_app_one), params: { visa_app_one: { q1: @visa_app_one.q1, q2: @visa_app_one.q2, q3: @visa_app_one.q3, q4: @visa_app_one.q4 } }
    assert_redirected_to visa_app_one_url(@visa_app_one)
  end

  test "should destroy visa_app_one" do
    assert_difference('VisaAppOne.count', -1) do
      delete visa_app_one_url(@visa_app_one)
    end

    assert_redirected_to visa_app_ones_url
  end
end
