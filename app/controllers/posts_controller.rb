class PostsController < ApplicationController
  before_action(:set_post, only: [:show, :edit, :update, :destroy])
  before_action(:login_chk, except: [:index])
  def index
      @posts=Post.all
  end

  def new
  end

  def show
  end

  def create
      Post.create(
      title: params[:title],
      content: params[:content],
      user_id: session[:id]
      )
      redirect_to '/'
  end

  def edit
  end

  def update
    @post.update(
      title: params[:title],
      content: params[:content]
      )
      redirect_to "/posts/show/#{@post.id}"
    
  end

  def destroy
    @post.destroy
    
    redirect_to :back
  end
  
  def write_reply
    Reply.create(
      comment: params[:comment],
      user_id: session[:id],
      post_id: params[:id]
      )
      redirect_to :back
  end
  

  
  private
  def set_post
    @post=Post.find(params[:id])
  end
  
  def login_chk
    unless session[:id]
      redirect_to '/users/login' and return
    end
  end
end
