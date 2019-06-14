require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :title => "MyString",
      :slug => "MyString",
      :visible => false,
      :obersarvations => "MyString"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input[name=?]", "item[title]"

      assert_select "input[name=?]", "item[slug]"

      assert_select "input[name=?]", "item[visible]"

      assert_select "input[name=?]", "item[obersarvations]"
    end
  end
end
