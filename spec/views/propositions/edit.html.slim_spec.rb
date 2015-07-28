require 'rails_helper'

RSpec.describe "propositions/edit", type: :view do
  before(:each) do
    @proposition = assign(:proposition, Proposition.create!(
      :name => "MyString",
      :year => 1,
      :number => 1,
      :remote_id => 1,
      :presantation_date => "",
      :purpose_description => "MyString",
      :purpose_explanation => "MyString"
    ))
  end

  it "renders the edit proposition form" do
    render

    assert_select "form[action=?][method=?]", proposition_path(@proposition), "post" do

      assert_select "input#proposition_name[name=?]", "proposition[name]"

      assert_select "input#proposition_year[name=?]", "proposition[year]"

      assert_select "input#proposition_number[name=?]", "proposition[number]"

      assert_select "input#proposition_remote_id[name=?]", "proposition[remote_id]"

      assert_select "input#proposition_presantation_date[name=?]", "proposition[presantation_date]"

      assert_select "input#proposition_purpose_description[name=?]", "proposition[purpose_description]"

      assert_select "input#proposition_purpose_explanation[name=?]", "proposition[purpose_explanation]"
    end
  end
end
