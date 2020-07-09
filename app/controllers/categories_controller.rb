class CategoriesController < ApplicationController

load_and_authorize_resource :category

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])

  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)

    if @category.save
    redirect_to @category
    else
      render 'new'
    end
  end

  def update
  @category = Category.find(params[:id])

  if @category.update(category_params)
    redirect_to @category
  else
    render 'edit'
  end
end

def destroy
  @category.destroy

  redirect_to categories_path
end

  private
    def category_params
      params.require(:category).permit(:desc)
  end

end
