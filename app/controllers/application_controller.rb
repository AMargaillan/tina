class ApplicationController < ActionController::Base
  include CurrentCart
  before_action :set_cart
  
  def index
  end

  def about
  end
  
end
