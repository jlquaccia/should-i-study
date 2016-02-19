class ItemsController < ApplicationController
  before_action :find_list, only: [:create]
  before_action :find_list_and_item, only: [:destroy]

  def create
    @item = @list.items.create(item_params)

    redirect_to @list
  end

  def destroy
    @item.destroy
    redirect_to @list
  end

  private

  def item_params
    params.require(:item).permit(:title)
  end

  def find_list
    @list = List.find(params[:list_id])
  end

  def find_list_and_item
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])
  end
end