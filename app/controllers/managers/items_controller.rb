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
    @item = Item.find(params[:id])
  end
  
  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to managers_item_path(@item.id)
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :introduction, :size_height, :size_width, :price, item_images_images: [])
  end
end
