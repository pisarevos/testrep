class FriendshipsController < ApplicationController
  def create
    Friendship.create(creator_id: current_user.id, friend_id: params[:id])
    redirect_to :back
  end

  def delete
    user = User.find(params[:id])
    current_user.friendship_with(user).delete_all
    redirect_to :back
  end
end
