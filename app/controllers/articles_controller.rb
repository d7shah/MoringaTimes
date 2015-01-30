class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(params)

  	if @article.save
  		redirect_to @article
  	else
  		render 'new'
  	end
  end

  def show
  end

  def edit
  end
 end