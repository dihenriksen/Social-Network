class ProfilesController < ApplicationController
  def new
  end

  def create

  end

  def show
    @user = User.find(params[:id])
    @new_news = News.new
    @news = []
    for i in @user.news_ids do
      @news << News.find_by_id(i)
    end
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
