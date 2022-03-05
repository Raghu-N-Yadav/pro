class CommentsController < ApplicationController
  def create
    @article = Page.find(params[:page_id])
    @comment = @article.comments.create(comment_params)
    redirect_to page_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:user, :body)
    end
end
