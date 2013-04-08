require 'spec_helper'

describe "causes/new" do
  before(:each) do
    assign(:cause, stub_model(Cause,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new cause form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", causes_path, "post" do
      assert_select "input#cause_name[name=?]", "cause[name]"
      assert_select "textarea#cause_description[name=?]", "cause[description]"
    end
  end
end
