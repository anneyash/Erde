class VisaApplicationFormsController < ApplicationController
  before_action :set_visa_application_form, only: [:show, :edit, :update, :destroy]

  # GET /visa_application_forms
  # GET /visa_application_forms.json
  def index
    @visa_application_forms = VisaApplicationForm.all
  end

  # GET /visa_application_forms/1
  # GET /visa_application_forms/1.json
  def show
  end

  # GET /visa_application_forms/new
  def new
    @visa_application_form = VisaApplicationForm.new
  end

  # GET /visa_application_forms/1/edit
  def edit
  end

  # POST /visa_application_forms
  # POST /visa_application_forms.json
  def create
    @visa_application_form = VisaApplicationForm.new(visa_application_form_params)

    respond_to do |format|
      if @visa_application_form.save
        format.html { redirect_to @visa_application_form, notice: 'Visa application form was successfully created.' }
        format.json { render :show, status: :created, location: @visa_application_form }
      else
        format.html { render :new }
        format.json { render json: @visa_application_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visa_application_forms/1
  # PATCH/PUT /visa_application_forms/1.json
  def update
    respond_to do |format|
      if @visa_application_form.update(visa_application_form_params)
        format.html { redirect_to @visa_application_form, notice: 'Visa application form was successfully updated.' }
        format.json { render :show, status: :ok, location: @visa_application_form }
      else
        format.html { render :edit }
        format.json { render json: @visa_application_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visa_application_forms/1
  # DELETE /visa_application_forms/1.json
  def destroy
    @visa_application_form.destroy
    respond_to do |format|
      format.html { redirect_to visa_application_forms_url, notice: 'Visa application form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visa_application_form
      @visa_application_form = VisaApplicationForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visa_application_form_params
      params.require(:visa_application_form).permit(:country_id, :title)
    end
end
