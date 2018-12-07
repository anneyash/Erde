require "application_system_test_case"

class StepQuestionsTest < ApplicationSystemTestCase
  setup do
    @step_question = step_questions(:one)
  end

  test "visiting the index" do
    visit step_questions_url
    assert_selector "h1", text: "Step Questions"
  end

  test "creating a Step question" do
    visit step_questions_url
    click_on "New Step Question"

    fill_in "Position", with: @step_question.position
    fill_in "Question", with: @step_question.question_id
    fill_in "Step", with: @step_question.step_id
    click_on "Create Step question"

    assert_text "Step question was successfully created"
    click_on "Back"
  end

  test "updating a Step question" do
    visit step_questions_url
    click_on "Edit", match: :first

    fill_in "Position", with: @step_question.position
    fill_in "Question", with: @step_question.question_id
    fill_in "Step", with: @step_question.step_id
    click_on "Update Step question"

    assert_text "Step question was successfully updated"
    click_on "Back"
  end

  test "destroying a Step question" do
    visit step_questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Step question was successfully destroyed"
  end
end
