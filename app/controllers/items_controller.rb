class ItemsController < ApplicationController


  def index
    @items = Item.all
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
    @photo = Photo.new
  end

  def show
    @item = Item.find(params[:id])
    #@photo = Photo.find(params[:id])
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
  end

  private

   def item_params
     params.require(:item).permit(:summary, :description, :price, :photo)
   end

end
