class UsersController < ApplicationController
	def new

	end

	def update
		if current_user
			user = User.find(current_user.id)
			user.update(user_params)

			begin
				if user.save
		  	  return render json: {user: user}.to_json, status: 200
		  	end
		  rescue
		  	user.errors.add(:email, 'already exists in database')
		  end

    	return render json: {error: user.errors}.to_json, status: 400
		end

    render json: {error: ''}.to_json, status: 401
	end

	def create
	  user = User.new(user_params)

	  # Try / catch in case there already exists one of the same email in db
	  begin
		  if user.save
		    session[:user_id] = user.id
	  	  return render json: {user: user}.to_json, status: 200
	  	end
	  rescue
	  	user.errors.add(:email, 'already exists in database')
	  end

    render json: {error: user.errors}.to_json, status: 400
	end

	private
	def user_params
	  params.require(:user).permit(:name, :email, :address, :password, :password_confirmation)
	end
end
