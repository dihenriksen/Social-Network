require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
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
      ),
      stub_model(User,
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
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name First".to_s, :count => 2
    assert_select "tr>td", :text => "Name Last".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Salt".to_s, :count => 2
    assert_select "tr>td", :text => "Fish".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
