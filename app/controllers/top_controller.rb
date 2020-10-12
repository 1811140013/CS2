class TopController < ApplicationController
  def main
    if session[:login_uid]
      render :main
    else
       render :login
    end
  end
  
  def login
    if params[:uid]=User.find_by(uid: params[:uid]) and params[:pass]=User.find_by(pass: params[:pass])
      session[:login_uid]=params[:uid]
      redirect_to root_path
    else
      render :error
    end
  end
  
  def destroy 
     session[:login_uid].clear
     render :login
  end
end
