require 'spec_helper'

describe "donations/new" do
  before(:each) do
    assign(:donation, stub_model(Donation,
      :cause_id => 1,
      :user_id => 1,
      :amount => "9.99",
      :race_id => 1
    ).as_new_record)
  end

  it "renders new donation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", donations_path, "post" do
      assert_select "input#donation_cause_id[name=?]", "donation[cause_id]"
      assert_select "input#donation_user_id[name=?]", "donation[user_id]"
      assert_select "input#donation_amount[name=?]", "donation[amount]"
      assert_select "input#donation_race_id[name=?]", "donation[race_id]"
    end
  end
end
