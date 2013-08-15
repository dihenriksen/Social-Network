require 'spec_helper'

describe UsersController do
	let(:user) { User.new(
		name_first: "  jOHN  ",
		name_last: "  zOIdBerg  "
	)}

	describe "POST create" do
	# 	it "capitalizes only first letter in first name" do
	# 		post :create, { user: { name_first: " jOHN ", name_last: "  zOIDberg  " } }
	# 		expect(user.name_first).to eql("John")
	# 	end

		it "redirects to newly created profile" do
			post :create, { user: {
				name_first: "John",
				name_last: "Zoidberg",
				email: "zoidberg@whynotzoidberg.com"
			}}

			response.code.should eql "302"
			response.should redirect_to profile_path #how to pass in :id with a test?
		end
	end

end