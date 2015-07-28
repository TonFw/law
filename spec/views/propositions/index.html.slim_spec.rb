require 'rails_helper'

RSpec.describe "propositions/index", type: :view do
  before(:each) do
    assign(:propositions, [
      Proposition.create!(
        :name => "Name",
        :year => 1,
        :number => 2,
        :remote_id => 3,
        :presantation_date => "",
        :purpose_description => "Purpose Description",
        :purpose_explanation => "Purpose Explanation"
      ),
      Proposition.create!(
        :name => "Name",
        :year => 1,
        :number => 2,
        :remote_id => 3,
        :presantation_date => "",
        :purpose_description => "Purpose Description",
        :purpose_explanation => "Purpose Explanation"
      )
    ])
  end

  it "renders a list of propositions" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Purpose Description".to_s, :count => 2
    assert_select "tr>td", :text => "Purpose Explanation".to_s, :count => 2
  end
end
