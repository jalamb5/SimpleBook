class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(like_params)

    respond_to do |format|
      if @like.save
        format.html { redirect_to post_url(@post), notice: "Liked" }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @like = current_user.likes.find(params[:id])
    post = @like.post
    @like.destroy
    redirect_to post
  end

  private

  def like_params
    params.require(:like).permit(:post_id)
  end
end
