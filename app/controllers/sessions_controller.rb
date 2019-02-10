class SessionsController < ActionController::Base

  def new

  end

  def create
    session[:name] = params[:name]
    if session[:name] == nil || session[:name].empty?
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
    # if session[:name] == nil || session[:name].empty?
    #   session[:name] == nil
    # else
    if session[:name]
      session.delete :name
    else
      session[:name] = nil
    end
    # end
    redirect_to '/'
  end


end
