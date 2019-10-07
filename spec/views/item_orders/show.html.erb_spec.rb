require 'rails_helper'

RSpec.describe "item_orders/show", type: :view do
  before(:each) do
    @item_order = assign(:item_order, ItemOrder.create!(
      :item => "",
      :cart => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
