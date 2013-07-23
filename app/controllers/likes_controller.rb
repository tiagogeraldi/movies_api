class LikesController < ApplicationController
  # POST /likes.json
  def create
    @like = Like.new(params[:like])

    respond_to do |format|
      if @like.save
        format.json { render json: @like, status: :created, location: @like }
      else
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /likes/1.json
  def destroy
    @like = Like.find(params[:id])
    @like.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end
end
