class Admin::ItemsController < ApplicationController
  before_action :authenticate_admin!

  def index

    @item = Item.all 
  end

  def new

    @item = Item.new
  end

  def create
    anotherHash = {:admin_id=> 1}
    newDbEntry=anotherHash.merge(item_params)
    @item = Item.new(newDbEntry)
      if @item.save
        redirect_to root_path
      else
        render :new, status: :unprocessable_entity
    end
  end

  def show

    @items = Item.find(params[:id])
  end

  def edit

    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to root_path
  end

  def destroy

    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end

  private

   def item_params
     params.require(:item).permit(:summary, :description, :price)
   end
  
end
