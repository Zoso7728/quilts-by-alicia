class LongArmsController < ApplicationController
  before_action :set_long_arm, only: [:show, :edit, :update, :destroy]

  # GET /long_arms
  # GET /long_arms.json
  def index
    @long_arms = LongArm.all
  end

  # GET /long_arms/1
  # GET /long_arms/1.json
  def show
  end

  # GET /long_arms/new
  def new
    @long_arm = LongArm.new
  end

  # GET /long_arms/1/edit
  def edit
  end

  # POST /long_arms
  # POST /long_arms.json
  def create
    @long_arm = LongArm.new(long_arm_params)

    respond_to do |format|
      if @long_arm.save
        format.html { redirect_to @long_arm, notice: 'Long arm was successfully created.' }
        format.json { render :show, status: :created, location: @long_arm }
      else
        format.html { render :new }
        format.json { render json: @long_arm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /long_arms/1
  # PATCH/PUT /long_arms/1.json
  def update
    respond_to do |format|
      if @long_arm.update(long_arm_params)
        format.html { redirect_to @long_arm, notice: 'Long arm was successfully updated.' }
        format.json { render :show, status: :ok, location: @long_arm }
      else
        format.html { render :edit }
        format.json { render json: @long_arm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /long_arms/1
  # DELETE /long_arms/1.json
  def destroy
    @long_arm.destroy
    respond_to do |format|
      format.html { redirect_to long_arms_url, notice: 'Long arm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_long_arm
      @long_arm = LongArm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def long_arm_params
      params.require(:long_arm).permit(:name, :email, :phone, :size, :batting, :binding, :quilting, :pantograph_patterns, :total)
    end
end
