class ProfilesController < ApplicationController
  def new
  end

  def create
  end

  def show
    @user = User.find(params[:id])
    @quotes = Quote.find_by_id(@user.quote_ids)
    @stories = Story.find_by_id(@user.story_ids)
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
