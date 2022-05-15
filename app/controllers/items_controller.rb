class ItemsController < ApplicationController
  # REMOVE FOR PRODUCTION!!!
  skip_before_action :verify_authenticity_token
  
  before_action :get_categories, only: [:new, :edit]
  before_action :set_item, only: [:show, :edit, :update, :destroy]
 
  
  def index
    @items = Item.all
  end
  
  def show
    @item = Item.find(params[:id])
  end

  def new
    Item.new
  end

  def create
    @item = current_user.items.create(item_params)
    flash[:success] = "Item listed. Thank for sharing"
    redirect_to @item
  end

  def edit
    
  end

  def update 
  if @item.update(require_params)
    flash[:success] = "Successfully updated"   
    redirect_to show
  else
    flash[:error] = "Error"   
    render :edit
  end
end

  def destroy
    @item.destroy
    redirect_to items_path
  end
  
  private

  def set_item
    @item = Item.find(params[:id])
  end

  def get_categories
    @categories = Category.all
  end

  # params.permit method returns strong params and accepts only the specified parameters and removes controller and action. This protects against SQL injection.
  def item_params
    return params.permit(:title, :description, :price, :user_id, :category_id)
  end

   def require_params
    return params.require(:item).permit(:title, :description, :price, :user_id, :category_id)
  end

end
