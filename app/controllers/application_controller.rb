class ApplicationController < ActionController::API
    #  include ::ActionController::Cookies
#  helpers do
        def current_user
            # User.first
            # User.find(session[:user_id])
            User.find_by(session[:user_id])
        end

        def logged_in?
            !!current_user
        end
end
# end
