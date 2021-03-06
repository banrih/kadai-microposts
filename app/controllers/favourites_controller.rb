class FavouritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:post_id])
    current_user.favourite(micropost)
    flash[:success] = "お気に入りに追加しました。"
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:post_id])
    current_user.unfavourite(micropost)
    flash[:danger] = "お気に入りを解除しました。"
    redirect_to root_url
  end
end
