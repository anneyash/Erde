require 'test_helper'

class VisaApplicationFormStepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visa_application_form_step = visa_application_form_steps(:one)
  end

  test "should get index" do
    get visa_application_form_steps_url
    assert_response :success
  end

  test "should get new" do
    get new_visa_application_form_step_url
    assert_response :success
  end

  test "should create visa_application_form_step" do
    assert_difference('VisaApplicationFormStep.count') do
      post visa_application_form_steps_url, params: { visa_application_form_step: { position: @visa_application_form_step.position, step_id: @visa_application_form_step.step_id, visa_application_form_id: @visa_application_form_step.visa_application_form_id } }
    end

    assert_redirected_to visa_application_form_step_url(VisaApplicationFormStep.last)
  end

  test "should show visa_application_form_step" do
    get visa_application_form_step_url(@visa_application_form_step)
    assert_response :success
  end

  test "should get edit" do
    get edit_visa_application_form_step_url(@visa_application_form_step)
    assert_response :success
  end

  test "should update visa_application_form_step" do
    patch visa_application_form_step_url(@visa_application_form_step), params: { visa_application_form_step: { position: @visa_application_form_step.position, step_id: @visa_application_form_step.step_id, visa_application_form_id: @visa_application_form_step.visa_application_form_id } }
    assert_redirected_to visa_application_form_step_url(@visa_application_form_step)
  end

  test "should destroy visa_application_form_step" do
    assert_difference('VisaApplicationFormStep.count', -1) do
      delete visa_application_form_step_url(@visa_application_form_step)
    end

    assert_redirected_to visa_application_form_steps_url
  end
end
