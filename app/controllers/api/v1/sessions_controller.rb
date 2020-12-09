class Api::V1::SessionsController < ApplicationController
    def create
        @user = User.find_by(username: params[:session][:username])
        # payload = params[:session][:password]
        if @user
            # if @user&.authenticate("password")
            # && @user.authenticate(params[:session][:password])
            # && @user.authenticate(params[:password])
            # session[:user_id] = @user.id
            #! byebug
          render json: @user
            # byebug
        else
            render json: {
            error: "Invalid Credentials Homie!"
    }
        end
    end

  def get_current_user
    if logged_in?
      render json: current_user
    #   render json: UserSerializer.new(current_user)
    else
      render json: {
        error: "No one logged in"
      }
    end
  end

  def destroy
    session.clear
    render json: {
      notice: "successfully logged out"
    }, status: :ok
  end



end
