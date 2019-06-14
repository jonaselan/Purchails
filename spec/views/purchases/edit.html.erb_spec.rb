require 'rails_helper'

RSpec.describe "purchases/edit", type: :view do
  before(:each) do
    @purchase = assign(:purchase, Purchase.create!(
      :amount => 1,
      :status => "MyString",
      :user_id => nil,
      :item_id => nil
    ))
  end

  it "renders the edit purchase form" do
    render

    assert_select "form[action=?][method=?]", purchase_path(@purchase), "post" do

      assert_select "input[name=?]", "purchase[amount]"

      assert_select "input[name=?]", "purchase[status]"

      assert_select "input[name=?]", "purchase[user_id_id]"

      assert_select "input[name=?]", "purchase[item_id_id]"
    end
  end
end
