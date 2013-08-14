class ProfileCreatedMailer < ActionMailer::Base
	default from: "noreply@mirrormirror.com"

	def profile_created(user)
		@user = user
		@fullname = "#{user.name_first} #{user.name_last}"

		mail to: @user.email, subject: "A profile has been created for you"
	end
end