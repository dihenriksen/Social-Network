class ProfileController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(
      :name_first
      :name_last
      :email
    )
  end

end
