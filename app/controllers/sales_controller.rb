class SalesController < ApplicationController

  def index
     @sales = Sale.all
   end

  def show
     @sale = Sale.find(params[:id])
   end

  def new
     @sale = Sale.new
   end

  def edit
     @sale = Sale.find(params[:id])
   end

  def create
    @sale = Sale.new(sale_params)
     if @sale.save
          redirect_to @sale
      else
          render 'new'
      end
    end

  def update
   @sale = Sale.find(params[:id])
     if @sale.update(sale_params)
        redirect_to @sale
     else
        render 'edit'
     end
   end

 def destroy
    @sale = Sale.find(params[:id])
    @sale.destroy
    redirect_to sales_path
 end

private
   def sale_params
             params.require(:sale).permit(:user_id,:category_id,:product_id, :amount, :price, :total)
       end
end
