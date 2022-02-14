class Managers::ItemsController < ApplicationController
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to managers_item_path(@item.id)
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :introduction, :size_height, :size_width, :price)
  end
end
