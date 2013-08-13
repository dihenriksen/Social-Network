require 'spec_helper'

describe "profile/show" do
	it "displays the header" do
		render :template => "profile/new", :layout => "layouts/application"
		expect(rendered).to match("Mirror Mirror")
	end
end
