class ProfilesController < ApplicationController
  def new
  end

  def create
  end

  def show
    @user = User.find(params[:id])
    @quotes = Quote.find_by_id(@user.quote_ids)
    puts "*"*70
    puts @quotes
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
