class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  def show
    @tweet = Tweet.find(params[:id])
  end
  def new
    @tweet = Tweet.new
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.save
    redirect_to @tweet
  end

  def update
    @tweet = Tweet.find(params[:id])
    @tweet.update(tweet_params)
    redirect_to @tweet

  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to @tweet
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
  end
end
