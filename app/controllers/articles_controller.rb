class ArticlesController < ApplicationController
  def new
    @article = Article.new #this is the instance variabel of Article, i can use it in my template "new"
  end

  def create
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_show(@article)
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end

end
