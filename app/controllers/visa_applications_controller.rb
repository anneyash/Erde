class VisaApplicationsController < ApplicationController
  before_action :set_step_id, only: [:index]
  skip_before_action :verify_authenticity_token

  # GET /visa_applications
  def index
    @form = Form.first
    step_id = params[:step]
    @step = @form.get_step(step_id)
    if @step
      @questions = @step.questions
    end
  end

  # POST /visa_applications
  def create
    step_id = params[:step]
    next_step = Step.find(step_id).get_next
    if next_step.nil?
      redirect_to action: "finished_form"
    else
      redirect_to action: "index", step: next_step.id
    end
  end

  def finished_form
  end


  private

  def set_step_id
    step_id = params[:step]
    unless step_id
      form = Form.first
      step = form.get_step
      redirect_to action: "index", step: step.id

    end
  end

end
