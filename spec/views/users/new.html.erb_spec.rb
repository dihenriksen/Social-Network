require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :name_first => "MyString",
      :name_last => "MyString",
      :email => "MyString",
      :salt => "MyString",
      :fish => "MyString",
      :code => "MyString",
      :expires_at => "",
      :born_on => "",
      :friends => "",
      :family => "",
      :pictures => ""
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_name_first[name=?]", "user[name_first]"
      assert_select "input#user_name_last[name=?]", "user[name_last]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_salt[name=?]", "user[salt]"
      assert_select "input#user_fish[name=?]", "user[fish]"
      assert_select "input#user_code[name=?]", "user[code]"
      assert_select "input#user_expires_at[name=?]", "user[expires_at]"
      assert_select "input#user_born_on[name=?]", "user[born_on]"
      assert_select "input#user_friends[name=?]", "user[friends]"
      assert_select "input#user_family[name=?]", "user[family]"
      assert_select "input#user_pictures[name=?]", "user[pictures]"
    end
  end
end
