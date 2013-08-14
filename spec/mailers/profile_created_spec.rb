require 'spec_helper'

describe ProfileCreatedMailer do
	let(:user) { User.new(
			name_first: 'Philip',
			name_last: 'Fry',
			code: '12345',
			email: 'philipfry@futurama.com'
		)}
	let(:mail) { ProfileCreatedMailer.profile_created(user) }

	it "renders the subject of the email" do
		mail.subject.should eql "A profile has been created for you"
		mail.to.should eql ["philipfry@futurama.com"]
		mail.from.should eql ["noreply@mirrormirror.com"]
	end

	it "includes @name in the body" do
		mail.body.encoded.should include "Philip"
		mail.body.encoded.should include "Fry"
	end

	it "includes coded link to sign up" do
		mail.body.encoded.should include "http://localhost:3000/register/12345"
	end
end