require 'test_helper'

class StepQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @step_question = step_questions(:one)
  end

  test "should get index" do
    get step_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_step_question_url
    assert_response :success
  end

  test "should create step_question" do
    assert_difference('StepQuestion.count') do
      post step_questions_url, params: { step_question: { position: @step_question.position, question_id: @step_question.question_id, step_id: @step_question.step_id } }
    end

    assert_redirected_to step_question_url(StepQuestion.last)
  end

  test "should show step_question" do
    get step_question_url(@step_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_step_question_url(@step_question)
    assert_response :success
  end

  test "should update step_question" do
    patch step_question_url(@step_question), params: { step_question: { position: @step_question.position, question_id: @step_question.question_id, step_id: @step_question.step_id } }
    assert_redirected_to step_question_url(@step_question)
  end

  test "should destroy step_question" do
    assert_difference('StepQuestion.count', -1) do
      delete step_question_url(@step_question)
    end

    assert_redirected_to step_questions_url
  end
end
