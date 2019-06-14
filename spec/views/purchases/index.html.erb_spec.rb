require 'rails_helper'

RSpec.describe "purchases/index", type: :view do
  before(:each) do
    assign(:purchases, [
      Purchase.create!(
        :amount => 2,
        :status => "Status",
        :user_id => nil,
        :item_id => nil
      ),
      Purchase.create!(
        :amount => 2,
        :status => "Status",
        :user_id => nil,
        :item_id => nil
      )
    ])
  end

  it "renders a list of purchases" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
