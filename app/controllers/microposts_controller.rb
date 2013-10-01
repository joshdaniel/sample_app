class MicropostsController < ApplicationController
  before_filter :signed_in_user

  def create
    @micropost = current_user.microposts.build(params[:micropost])
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      #TODO: Change this to show existing microposts even after an error creating a new one.
      #@feed_items = current_user.feed.paginate(page: params[:page])
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
  end
end