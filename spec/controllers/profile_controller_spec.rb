require 'spec_helper'

describe ProfileController do
	describe "GET #new" do
		it "responds with an HTTP 200 status code" do
			get :new
			expect(response).to be_success
			expect(response.status).to eq(200)
		end

		it "displays the header" do
			get :new
			expect(page).to have_content('Mirror Mirror')
			expect(page).to have_content('Home')
			expect(page).to have_content('Profile')
		end
	end
end
