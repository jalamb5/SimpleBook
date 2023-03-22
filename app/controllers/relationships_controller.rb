class RelationshipsController < ApplicationController

  def create
    if params.include?(:requested_id)
      @user = User.find(params[:requested_id])
      current_user.follow_request(@user)
    else
      @user = User.find(params[:followed_id])
      current_user.follow(@user)
    end
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end


  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
end
