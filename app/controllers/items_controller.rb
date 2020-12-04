class ItemsController < ApplicationController

  before_action :set_item, only: [:edit, :show]
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
  end

  def edit
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
  end

  def show
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :memo)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
