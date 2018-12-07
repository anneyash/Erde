require "application_system_test_case"

class VisaApplicationFormStepsTest < ApplicationSystemTestCase
  setup do
    @visa_application_form_step = visa_application_form_steps(:one)
  end

  test "visiting the index" do
    visit visa_application_form_steps_url
    assert_selector "h1", text: "Visa Application Form Steps"
  end

  test "creating a Visa application form step" do
    visit visa_application_form_steps_url
    click_on "New Visa Application Form Step"

    fill_in "Position", with: @visa_application_form_step.position
    fill_in "Step", with: @visa_application_form_step.step_id
    fill_in "Visa Application Form", with: @visa_application_form_step.visa_application_form_id
    click_on "Create Visa application form step"

    assert_text "Visa application form step was successfully created"
    click_on "Back"
  end

  test "updating a Visa application form step" do
    visit visa_application_form_steps_url
    click_on "Edit", match: :first

    fill_in "Position", with: @visa_application_form_step.position
    fill_in "Step", with: @visa_application_form_step.step_id
    fill_in "Visa Application Form", with: @visa_application_form_step.visa_application_form_id
    click_on "Update Visa application form step"

    assert_text "Visa application form step was successfully updated"
    click_on "Back"
  end

  test "destroying a Visa application form step" do
    visit visa_application_form_steps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visa application form step was successfully destroyed"
  end
end
