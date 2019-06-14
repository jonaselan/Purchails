require 'rails_helper'

RSpec.describe "authors/index", type: :view do
  before(:each) do
    assign(:authors, [
      Author.create!(
        :name => "Name",
        :publishing_company => "Publishing Company"
      ),
      Author.create!(
        :name => "Name",
        :publishing_company => "Publishing Company"
      )
    ])
  end

  it "renders a list of authors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Publishing Company".to_s, :count => 2
  end
end
