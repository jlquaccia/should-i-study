class ListsController < ApplicationController
  before_action :find_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all.order("created_at DESC")
  end

  def show
    @items = @list.items.all.order("created_at DESC")
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @list.update(list_params)
    redirect_to lists_url
  end

  def destroy
    @list.destroy
    redirect_to lists_url
  end

  private

  def list_params
    params.require(:list).permit(:title)
  end

  def find_list
    @list = List.find(params[:id])
  end
end