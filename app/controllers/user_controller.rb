class UserController < ApplicationController
  def index
    @users=User.all
  end

  def new
    @user=User.new
  end
  
  def create
    @user = User.new(uid: params[:uid],pass: [:pass])
    @user.pass = BCrypt::Password.create(params[:pass])
    @user.save
    redirect_to '/' 
  end
end
