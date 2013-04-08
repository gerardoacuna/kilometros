require 'spec_helper'

describe "donations/show" do
  before(:each) do
    @donation = assign(:donation, stub_model(Donation,
      :cause_id => 1,
      :user_id => 2,
      :amount => "9.99",
      :race_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/9.99/)
    rendered.should match(/3/)
  end
end
