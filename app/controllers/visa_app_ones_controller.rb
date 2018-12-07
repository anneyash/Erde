class VisaAppOnesController < ApplicationController
  before_action :set_visa_app_one, only: [:show, :step_2, :step_3, :edit, :update, :update_step_2, :destroy]

  # GET /visa_app_ones
  # GET /visa_app_ones.json
  def index
    @visa_app_ones = VisaAppOne.all
  end

  # GET /visa_app_ones/1
  # GET /visa_app_ones/1.json
  def show
  end

  # GET /visa_app_ones/new
  def new
    @visa_app_one = VisaAppOne.new
  end

  def step_2
  end

  def step_3
  end

  # GET /visa_app_ones/1/edit
  def edit
  end

  # POST /visa_app_ones
  # POST /visa_app_ones.json
  def create
    @visa_app_one = VisaAppOne.new(visa_app_one_params)

    respond_to do |format|
      if @visa_app_one.save
        format.html { redirect_to step_2_visa_app_one_path(@visa_app_one), notice: 'Visa app one was successfully created.' }
        format.json { render :show, status: :created, location: @visa_app_one }
      else
        format.html { render :new }
        format.json { render json: @visa_app_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visa_app_ones/1
  # PATCH/PUT /visa_app_ones/1.json
  def update
    respond_to do |format|
      if @visa_app_one.update(visa_app_one_params)
        format.html { redirect_to @visa_app_one, notice: 'Visa app one was successfully updated.' }
        format.json { render :show, status: :ok, location: @visa_app_one }
      else
        format.html { render :edit }
        format.json { render json: @visa_app_one.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_step_2
    respond_to do |format|
      if @visa_app_one.update(visa_app_one_params)
        format.html { redirect_to step_3_visa_app_one_path(@visa_app_one), notice: 'Visa app one was successfully updated.' }
        format.json { render :show, status: :ok, location: @visa_app_one }
      else
        format.html { render :edit }
        format.json { render json: @visa_app_one.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visa_app_ones/1
  # DELETE /visa_app_ones/1.json
  def destroy
    @visa_app_one.destroy
    respond_to do |format|
      format.html { redirect_to visa_app_ones_url, notice: 'Visa app one was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visa_app_one
      @visa_app_one = VisaAppOne.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visa_app_one_params
      params.require(:visa_app_one).permit(:q1, :q2, :q3, :q4)
    end
end
