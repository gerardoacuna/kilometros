require 'spec_helper'

describe "donations/edit" do
  before(:each) do
    @donation = assign(:donation, stub_model(Donation,
      :cause_id => 1,
      :user_id => 1,
      :amount => "9.99",
      :race_id => 1
    ))
  end

  it "renders the edit donation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", donation_path(@donation), "post" do
      assert_select "input#donation_cause_id[name=?]", "donation[cause_id]"
      assert_select "input#donation_user_id[name=?]", "donation[user_id]"
      assert_select "input#donation_amount[name=?]", "donation[amount]"
      assert_select "input#donation_race_id[name=?]", "donation[race_id]"
    end
  end
end
