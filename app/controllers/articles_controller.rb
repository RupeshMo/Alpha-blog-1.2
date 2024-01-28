class ArticlesController < ApplicationController
  
  # For list all articles
  def index
    @articles = Article.all
  end 

  # For showing a particular articles with reference to the id passed in a hash
  def show
    # First fetch the id and save it in a instance variable to make it acessible outside this class
    @article = Article.find(params[:id]) # :id is a route parameter capturer in the 
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.new(article_params)

      if @article.save
        redirect_to @article
      else
        render :edit, status: :unprocessable_entity
      end
  end

  def destroy 
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path, status: :see_other
  end

  private
  def article_params 
    params.require(:article).permit(:title, :body)
  end
end