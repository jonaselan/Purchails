require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :title => "MyString",
      :slug => "MyString",
      :visible => false,
      :obersarvations => "MyString"
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input[name=?]", "item[title]"

      assert_select "input[name=?]", "item[slug]"

      assert_select "input[name=?]", "item[visible]"

      assert_select "input[name=?]", "item[obersarvations]"
    end
  end
end
