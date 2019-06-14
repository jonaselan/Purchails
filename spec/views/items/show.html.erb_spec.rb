require 'rails_helper'

RSpec.describe "items/show", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :title => "Title",
      :slug => "Slug",
      :visible => false,
      :obersarvations => "Obersarvations"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Obersarvations/)
  end
end
