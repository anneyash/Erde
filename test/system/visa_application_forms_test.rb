require "application_system_test_case"

class VisaApplicationFormsTest < ApplicationSystemTestCase
  setup do
    @visa_application_form = visa_application_forms(:one)
  end

  test "visiting the index" do
    visit visa_application_forms_url
    assert_selector "h1", text: "Visa Application Forms"
  end

  test "creating a Visa application form" do
    visit visa_application_forms_url
    click_on "New Visa Application Form"

    fill_in "Country", with: @visa_application_form.country_id
    fill_in "Title", with: @visa_application_form.title
    click_on "Create Visa application form"

    assert_text "Visa application form was successfully created"
    click_on "Back"
  end

  test "updating a Visa application form" do
    visit visa_application_forms_url
    click_on "Edit", match: :first

    fill_in "Country", with: @visa_application_form.country_id
    fill_in "Title", with: @visa_application_form.title
    click_on "Update Visa application form"

    assert_text "Visa application form was successfully updated"
    click_on "Back"
  end

  test "destroying a Visa application form" do
    visit visa_application_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visa application form was successfully destroyed"
  end
end
