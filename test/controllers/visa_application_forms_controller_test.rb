require 'test_helper'

class VisaApplicationFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visa_application_form = visa_application_forms(:one)
  end

  test "should get index" do
    get visa_application_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_visa_application_form_url
    assert_response :success
  end

  test "should create visa_application_form" do
    assert_difference('VisaApplicationForm.count') do
      post visa_application_forms_url, params: { visa_application_form: { country_id: @visa_application_form.country_id, title: @visa_application_form.title } }
    end

    assert_redirected_to visa_application_form_url(VisaApplicationForm.last)
  end

  test "should show visa_application_form" do
    get visa_application_form_url(@visa_application_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_visa_application_form_url(@visa_application_form)
    assert_response :success
  end

  test "should update visa_application_form" do
    patch visa_application_form_url(@visa_application_form), params: { visa_application_form: { country_id: @visa_application_form.country_id, title: @visa_application_form.title } }
    assert_redirected_to visa_application_form_url(@visa_application_form)
  end

  test "should destroy visa_application_form" do
    assert_difference('VisaApplicationForm.count', -1) do
      delete visa_application_form_url(@visa_application_form)
    end

    assert_redirected_to visa_application_forms_url
  end
end
