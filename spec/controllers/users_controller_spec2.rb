require 'spec_helper'

describe UsersController do
	let(:user) { User.make }

	describe "GET new" do
		it "capitalizes only first letter in first name" do
			expect(user.name_first).to eql("Phil")
		end
	end

end