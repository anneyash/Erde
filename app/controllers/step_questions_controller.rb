class StepQuestionsController < ApplicationController
  before_action :set_step_question, only: [:show, :edit, :update, :destroy]

  # GET /step_questions
  # GET /step_questions.json
  def index
    @step_questions = StepQuestion.all
  end

  # GET /step_questions/1
  # GET /step_questions/1.json
  def show
  end

  # GET /step_questions/new
  def new
    @step_question = StepQuestion.new
  end

  # GET /step_questions/1/edit
  def edit
  end

  # POST /step_questions
  # POST /step_questions.json
  def create
    @step_question = StepQuestion.new(step_question_params)

    respond_to do |format|
      if @step_question.save
        format.html { redirect_to @step_question, notice: 'Step question was successfully created.' }
        format.json { render :show, status: :created, location: @step_question }
      else
        format.html { render :new }
        format.json { render json: @step_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /step_questions/1
  # PATCH/PUT /step_questions/1.json
  def update
    respond_to do |format|
      if @step_question.update(step_question_params)
        format.html { redirect_to @step_question, notice: 'Step question was successfully updated.' }
        format.json { render :show, status: :ok, location: @step_question }
      else
        format.html { render :edit }
        format.json { render json: @step_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_questions/1
  # DELETE /step_questions/1.json
  def destroy
    @step_question.destroy
    respond_to do |format|
      format.html { redirect_to step_questions_url, notice: 'Step question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step_question
      @step_question = StepQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_question_params
      params.require(:step_question).permit(:step_id, :question_id, :position)
    end
end
