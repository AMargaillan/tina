class Admin::ItemsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @item = Item.all 
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
      if @item.valid?
        redirect_to root_path
      else
        render :new, status: :unprocessable_entity
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
    @item.update_attributes(item_params)
    redirect_to root_path
  end

  private

   def item_params
     params.require(:item).permit(:summary, :description, :price)
   end
  
end
