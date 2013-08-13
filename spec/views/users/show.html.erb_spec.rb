require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :name_first => "Name First",
      :name_last => "Name Last",
      :email => "Email",
      :salt => "Salt",
      :fish => "Fish",
      :code => "Code",
      :expires_at => "",
      :born_on => "",
      :friends => "",
      :family => "",
      :pictures => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name First/)
    rendered.should match(/Name Last/)
    rendered.should match(/Email/)
    rendered.should match(/Salt/)
    rendered.should match(/Fish/)
    rendered.should match(/Code/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
