require 'rails_helper'

RSpec.describe "item_orders/new", type: :view do
  before(:each) do
    assign(:item_order, ItemOrder.new(
      :item => "",
      :cart => nil
    ))
  end

  it "renders new item_order form" do
    render

    assert_select "form[action=?][method=?]", item_orders_path, "post" do

      assert_select "input[name=?]", "item_order[item]"

      assert_select "input[name=?]", "item_order[cart_id]"
    end
  end
end
