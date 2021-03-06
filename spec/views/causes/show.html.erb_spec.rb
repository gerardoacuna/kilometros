require 'spec_helper'

describe "causes/show" do
  before(:each) do
    @cause = assign(:cause, stub_model(Cause,
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
