class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params, user_id: params[:user_id])

    if @comment.save
      render json: @comment
    else
      render(
        json: @comment.errors.full_messages,
        status: :unprocessable_entity
      )
    end
  rescue RestClient::UnprocessableEntity
    puts "Incorrect params"
  end

  def destroy

  end

  private

  def comment_params
    params
      .require(:comment)
      .permit(:commentable_id, :commentable_type, :body)
  end
end
