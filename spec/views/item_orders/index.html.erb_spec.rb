require 'rails_helper'

RSpec.describe "item_orders/index", type: :view do
  before(:each) do
    assign(:item_orders, [
      ItemOrder.create!(
        :item => "",
        :cart => nil
      ),
      ItemOrder.create!(
        :item => "",
        :cart => nil
      )
    ])
  end

  it "renders a list of item_orders" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
