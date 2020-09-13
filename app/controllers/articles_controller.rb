class ArticlesController < ApplicationController
  before_action :authenticate_user!
  # before_action :authenticate_user!, except: [:index, :show]
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_params)
    @article.user = current_user

    respond_to do |format|
      if @article.save
        format.html { redirect_to articles_path, notice: 'Article was successfully created.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end

    # if @article.save
    #   flash[:success] = "Article has been created"
    #   redirect_to articles_path
    # else
    #   flash.now[:danger] = "Article has not been created"
    #   render :new
    # end
  end
  
  def show
    @comment = @article.comments.build
    @comments = @article.comments
  end
  
  def edit
    unless @article.user == current_user
      flash[:alert] = "You can only edit your own article."
      redirect_to root_path
    end
  end
  
  def update
    unless @article.user == current_user
      flash[:danger] = "You can only edit your own article."
      redirect_to root_path
    else  
      if @article.update(article_params)
        flash[:success] = "Article has been updated"
        redirect_to @article
      else
        flash.now[:danger] = "Article has not been updated"
        render :edit
      end
    end
  end
  
  def destroy
    if @article.destroy
      respond_to do |format|
        format.html { redirect_to articles_path, notice: 'Article was successfully destroyed.' }
        format.json { head :no_content }
      end
      # flash[:success] = "Article has been deleted"
      # redirect_to articles_path
    end
  end
  
  protected
  
    def resource_not_found
      message = "The article you are looking for could not be found"
      flash[:alert] = message
      redirect_to root_path
    end
  
  private
  
    def set_article
      @article = Article.find(params[:id])
    end
  
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
