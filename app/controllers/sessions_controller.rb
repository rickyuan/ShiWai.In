# encoding: utf-8
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_path, notice: "欢迎来到世外，#{current_user.name}！"
  end

  def failure
    redirect_to login_path, :flash => { :notice => "授权失败！" }
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
