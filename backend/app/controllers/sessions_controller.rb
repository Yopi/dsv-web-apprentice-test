class SessionsController < ApplicationController
  def new
  end

  # Find the user, and return the ID if it exists or return an error
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
	    session[:user_id] = user.id
      return render json: {user: user}.to_json, status: 200
	  else
	    return render json: {error: 'wrong email or password'}.to_json, status: 401
    end
  end

  def destroy
    session[:user_id] = nil
    return render json: {}.to_json, status: 200
  end
end
