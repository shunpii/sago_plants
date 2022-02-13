class Managers::ItemsController < ApplicationController
  def new
    @item = Item.new
  end
  
  def create
    item = Item.new(item_params)
    item.save
    redirect_to '/index'
  end

  def index
  end

  def show
  end

  def edit
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :introduction, :price, :size_height, :size_width, item_images_images: [])
  end
end
