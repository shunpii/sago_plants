class Managers::ItemsController < ApplicationController
  def new
    @item = Item.new
  end
  
  def create
    item = Item.new(item_params)
    item.save
    redirect_to managers_items_path
  end

  def index
    @items = Item.all
  end

  def show
  end

  def edit
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :introduction, :size_height, :size_width, :price)
  end
end
