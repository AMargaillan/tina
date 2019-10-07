require 'rails_helper'

RSpec.describe "item_orders/edit", type: :view do
  before(:each) do
    @item_order = assign(:item_order, ItemOrder.create!(
      :item => "",
      :cart => nil
    ))
  end

  it "renders the edit item_order form" do
    render

    assert_select "form[action=?][method=?]", item_order_path(@item_order), "post" do

      assert_select "input[name=?]", "item_order[item]"

      assert_select "input[name=?]", "item_order[cart_id]"
    end
  end
end
