class ApplicationController < ActionController::Base
    include ActionController::Cookies

    # test controller for enviro/code set up
    def hello_world
        session[:count] = (session[:count] || 0) + 1
        render json: { count: session[:count] }
    end
    
end
