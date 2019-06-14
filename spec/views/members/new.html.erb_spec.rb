require 'rails_helper'

RSpec.describe "members/new", type: :view do
  before(:each) do
    assign(:member, Member.new(
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", members_path, "post" do

      assert_select "input[name=?]", "member[name]"

      assert_select "input[name=?]", "member[email]"

      assert_select "input[name=?]", "member[phone]"
    end
  end
end
