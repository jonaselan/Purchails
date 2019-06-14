require 'rails_helper'

RSpec.describe "purchases/new", type: :view do
  before(:each) do
    assign(:purchase, Purchase.new(
      :amount => 1,
      :status => "MyString",
      :user_id => nil,
      :item_id => nil
    ))
  end

  it "renders new purchase form" do
    render

    assert_select "form[action=?][method=?]", purchases_path, "post" do

      assert_select "input[name=?]", "purchase[amount]"

      assert_select "input[name=?]", "purchase[status]"

      assert_select "input[name=?]", "purchase[user_id_id]"

      assert_select "input[name=?]", "purchase[item_id_id]"
    end
  end
end
