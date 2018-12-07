class VisaApplicationFormStepsController < ApplicationController
  before_action :set_visa_application_form_step, only: [:show, :edit, :update, :destroy]

  # GET /visa_application_form_steps
  # GET /visa_application_form_steps.json
  def index
    @visa_application_form_steps = VisaApplicationFormStep.all
  end

  # GET /visa_application_form_steps/1
  # GET /visa_application_form_steps/1.json
  def show
  end

  # GET /visa_application_form_steps/new
  def new
    @visa_application_form_step = VisaApplicationFormStep.new
  end

  # GET /visa_application_form_steps/1/edit
  def edit
  end

  # POST /visa_application_form_steps
  # POST /visa_application_form_steps.json
  def create
    @visa_application_form_step = VisaApplicationFormStep.new(visa_application_form_step_params)

    respond_to do |format|
      if @visa_application_form_step.save
        format.html { redirect_to @visa_application_form_step, notice: 'Visa application form step was successfully created.' }
        format.json { render :show, status: :created, location: @visa_application_form_step }
      else
        format.html { render :new }
        format.json { render json: @visa_application_form_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visa_application_form_steps/1
  # PATCH/PUT /visa_application_form_steps/1.json
  def update
    respond_to do |format|
      if @visa_application_form_step.update(visa_application_form_step_params)
        format.html { redirect_to @visa_application_form_step, notice: 'Visa application form step was successfully updated.' }
        format.json { render :show, status: :ok, location: @visa_application_form_step }
      else
        format.html { render :edit }
        format.json { render json: @visa_application_form_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visa_application_form_steps/1
  # DELETE /visa_application_form_steps/1.json
  def destroy
    @visa_application_form_step.destroy
    respond_to do |format|
      format.html { redirect_to visa_application_form_steps_url, notice: 'Visa application form step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visa_application_form_step
      @visa_application_form_step = VisaApplicationFormStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visa_application_form_step_params
      params.require(:visa_application_form_step).permit(:visa_application_form_id, :step_id, :position)
    end
end
