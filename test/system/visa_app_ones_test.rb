require "application_system_test_case"

class VisaAppOnesTest < ApplicationSystemTestCase
  setup do
    @visa_app_one = visa_app_ones(:one)
  end

  test "visiting the index" do
    visit visa_app_ones_url
    assert_selector "h1", text: "Visa App Ones"
  end

  test "creating a Visa app one" do
    visit visa_app_ones_url
    click_on "New Visa App One"

    fill_in "Q1", with: @visa_app_one.q1
    fill_in "Q2", with: @visa_app_one.q2
    fill_in "Q3", with: @visa_app_one.q3
    fill_in "Q4", with: @visa_app_one.q4
    click_on "Create Visa app one"

    assert_text "Visa app one was successfully created"
    click_on "Back"
  end

  test "updating a Visa app one" do
    visit visa_app_ones_url
    click_on "Edit", match: :first

    fill_in "Q1", with: @visa_app_one.q1
    fill_in "Q2", with: @visa_app_one.q2
    fill_in "Q3", with: @visa_app_one.q3
    fill_in "Q4", with: @visa_app_one.q4
    click_on "Update Visa app one"

    assert_text "Visa app one was successfully updated"
    click_on "Back"
  end

  test "destroying a Visa app one" do
    visit visa_app_ones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visa app one was successfully destroyed"
  end
end
