class ItemOrdersController < ApplicationController
  include CurrentCart
  #before_action :set_item_order, only: [:show, :edit, :update, :destroy]
  before_action :set_cart, only: [:create] 

  # GET /item_orders
  # GET /item_orders.json
  def index
    @item_orders = ItemOrder.all
  end

  # GET /item_orders/1
  # GET /item_orders/1.json
  def show
    puts "DFLKJL:KJSDFLJ:LSDFJLSDJFLSDJKFLSDJFL:SDFKJL:SDFJLSJDFLJKDLFJSDFL"
  end

  # GET /item_orders/new
  def new
    @item_order = ItemOrder.new
  end

  # GET /item_orders/1/edit
  def edit
  end

  # POST /item_orders
  # POST /item_orders.json
  def create
    item = Item.find(params[:item_id])
    @item_order = @cart.add_item(item)

    respond_to do |format|
      if @item_order.save
        format.html { redirect_to @item_order.cart, notice: 'Item added to cart.' }
        format.json { render :show, status: :created, location: @item_order }
      else
        format.html { render :new }
        format.json { render json: @item_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_orders/1
  # PATCH/PUT /item_orders/1.json
  def update
    respond_to do |format|
      if @item_order.update(item_order_params)
        format.html { redirect_to @item_order, notice: 'Item order was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_order }
      else
        format.html { render :edit }
        format.json { render json: @item_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_orders/1
  # DELETE /item_orders/1.json
  def destroy
    @cart = Cart.find(session[:cart_id])
    @item_order.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(@cart), notice: 'Item order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_item_order
    #   @item_order = ItemOrder.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_order_params
      params.require(:item_order).permit(:item_id)
    end
end
