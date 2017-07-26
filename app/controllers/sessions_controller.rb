class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    # byebug
    if session[:name]
      session.clear
      redirect_to '/login'
    else
      session[:name] = nil
      redirect_to '/'
    end
  end
end
