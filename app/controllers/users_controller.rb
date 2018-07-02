class UsersController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def create
    unless User.find_by(name: params[:name])
      User.create(
        name: params[:name],
        password: params[:password]
        )
    else
      redirect_to '/users/new'
    end
  end
  
  def login
  end
  
  def login_chk
    @users = User.all
    @users.each do |u|
      if u.name==params[:name] and u.password==params[:password]
        session[:id] = u.id
        redirect_to '/'
      end
    end
  end
  
  def logout
    session.clear
    redirect_to '/'
  end
  
  def mypage
    @posts = User.find(session[:id]).posts
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
