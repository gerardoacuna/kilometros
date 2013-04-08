require 'spec_helper'

describe "donations/index" do
  before(:each) do
    assign(:donations, [
      stub_model(Donation,
        :cause_id => 1,
        :user_id => 2,
        :amount => "9.99",
        :race_id => 3
      ),
      stub_model(Donation,
        :cause_id => 1,
        :user_id => 2,
        :amount => "9.99",
        :race_id => 3
      )
    ])
  end

  it "renders a list of donations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
