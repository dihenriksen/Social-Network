require 'spec_helper'

describe ProfileController do
	describe "GET #new" do
		it "responds with an HTTP 200 status code" do
			get :new
			expect(response).to be_success
			expect(response.status).to eq(200)
		end
	end
end
