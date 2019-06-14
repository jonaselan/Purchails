require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :title => "Title",
        :slug => "Slug",
        :visible => false,
        :obersarvations => "Obersarvations"
      ),
      Item.create!(
        :title => "Title",
        :slug => "Slug",
        :visible => false,
        :obersarvations => "Obersarvations"
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Obersarvations".to_s, :count => 2
  end
end
