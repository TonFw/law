require 'rails_helper'

RSpec.describe "propositions/show", type: :view do
  before(:each) do
    @proposition = assign(:proposition, Proposition.create!(
      :name => "Name",
      :year => 1,
      :number => 2,
      :remote_id => 3,
      :presantation_date => "",
      :purpose_description => "Purpose Description",
      :purpose_explanation => "Purpose Explanation"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Purpose Description/)
    expect(rendered).to match(/Purpose Explanation/)
  end
end
