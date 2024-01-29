class PagesController < ApplicationController
  def home
    @articles = Article.all
  end

  def about
    @articles = Article.all
  end
end
