class PostsController < ApplicationController

  def index
    @posts=Post.all
  end

  def new
    @post=Post.new
  end

  def create
    @post=Post.new(params.require(:post).permit(:title, :startday, :finishday, :wholeday, :memo))
    
    if @post.save
      flash[:notice]="予定を追加しました"
      redirect_to :posts
    else 
      render "new"
    end
  end

  def show
    @post=Post.find(params[:id])
  end

  def edit
    @post=Post.find(params[:id])
  end

  def update
    @post=Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title ,:startday, :finishday, :wholeday, :memo))
      flash[:notice]="IDが「#{@post.id}」の予定を編集しました"
      redirect_to :posts
    else
      render "edit"
    end
  end

  def destroy
    @post=Post.find(params[:id])
    @post.destroy
    flash[:notice]="予定を削除しました"
    redirect_to :posts
  end
end
