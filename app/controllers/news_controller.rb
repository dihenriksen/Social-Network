class NewsController < ApplicationController
	before_action :get_user

	def index
	end

	def create
		@user.news << News.create(news_params)
		@user.save
		render json: @user
	end

	def update
		render json: params
	end

	def show
		render json: params
	end

	private

	def get_user
		head :bad_request unless (@user = User.find_by_id params[:user_id])
	end

	def news_params
		params.require(:news).permit(
			:content)
	end

end