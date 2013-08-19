class ProfilesController < ApplicationController
  def new
  end

  def create
  end

  def show
    @user = User.find(params[:id])
    @quotes = Quote.by_name(@user.name_first)
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
