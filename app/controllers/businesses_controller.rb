class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :update, :destroy]

  # GET /businesses
  # GET /businesses.json
  def index
    @user = User.find(params[:user_id])
    @businesses = @user.businesses
  end

  # GET /businesses/1
  # GET /businesses/1.json
  def show
    @user = User.find(params[:user_id])
    @cashflows = @business.cashflows
  end

  # GET /businesses/new
  def new
    @user = User.find(params[:user_id])
    @business = @user.businesses.new
  end

  # GET /businesses/1/edit
  def edit
  end

  # POST /businesses
  # POST /businesses.json
  def create
    @user = User.find(params[:user_id])
    @business = @user.businesses.new(business_params)

    
      if @business.save
        redirect_to user_business_path(@user, @business)
      else
        redirect_to root_url
      end
      
  end

  # PATCH/PUT /businesses/1
  # PATCH/PUT /businesses/1.json
  def update
    respond_to do |format|
      if @business.update(business_params)
        format.html { redirect_to @business, notice: 'Business was successfully updated.' }
        format.json { render :show, status: :ok, location: @business }
      else
        format.html { render :edit }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businesses/1
  # DELETE /businesses/1.json
  def destroy
    @business.destroy
    respond_to do |format|
      format.html { redirect_to businesses_url, notice: 'Business was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business
      @business = Business.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_params
      params.require(:business).permit(:name, :user_id)
    end
end
