class PagesController < ApplicationController
  def index
    @articles = Page.all
  end

  def demo
    @arr = [1,2,3,4]
  end

  def show
    @article = Page.find(params[:id])
  end

  def new
    @article = Page.new
  end

  def create
    @article = Page.new(article_params)

    if @article.save
      redirect_to  @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Page.find(params[:id])
  end

  def update
    @article = Page.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Page.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def article_params
      params.require(:page).permit(:title, :body)
    end


end
