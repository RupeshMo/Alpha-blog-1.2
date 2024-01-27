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
end