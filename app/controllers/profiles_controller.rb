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
      @news << News.find_by_id(i) unless News.find_by_id(i).nil?
    end
    @news.reverse!

    @quotes = []
    for i in @user.quote_ids do
      @quotes << Quote.find_by_id(@user.quote_ids) unless Quote.find_by_id(i).nil?
    end
    @quotes.reverse!

    @stories = []
    for i in @user.story_ids do
      @stories << Story.find_by_id(@user.story_ids) unless Story.find_by_id(i).nil?
    end
    @stories.reverse!

  end

  def edit
  end

  def update
  end

  def destroy
  end

end
