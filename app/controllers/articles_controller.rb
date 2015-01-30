class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(article_params)

  	if @article.save
  		redirect_to @article
  	else
  		render 'new'
  	end
  end

  def show
  	@article = Article.find(params[:id])
  end

  def edit
  end

  private
  	#strong parameters (only specific info that we need is passed in)

  	def article_params
  		params.require(:article).permit(:title, :content, :author)
  	end

 end