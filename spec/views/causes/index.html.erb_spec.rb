require 'spec_helper'

describe "causes/index" do
  before(:each) do
    assign(:causes, [
      stub_model(Cause,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(Cause,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of causes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
