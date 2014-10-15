class StaticPagesController < ApplicationController

  def home
    if signed_in?
      @status  = current_user.statuses.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
end