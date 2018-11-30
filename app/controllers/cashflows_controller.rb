class CashflowsController < ApplicationController
  
  def new
    @business = Business.find(params[:business_id])
    @cashflow = @business.cashflows.new
  end
  
  def create
   @business = Business.find(params[:business_id])
   @cashflow = @business.cashflows.new(cashflow_params)
     if @cashflow.save
       redirect_to user_business_path(@business.user, @business)
     end
   
  end
  
  def index
    
  end
  
  
  private

    def cashflow_params
      params.require(:cashflow).permit(:name, :type, :quantity)
    end
end
