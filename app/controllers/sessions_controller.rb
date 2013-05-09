class SessionsController < ApplicationController

    def new
    end
    def create
        user = User.find_by_email(params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            #sign in
            sign_in user
            redirect_to user
        else
            #show error
            flash.now[:error] = 'Invalid email/password'
            render 'new'
        end
    end
    def destroy
    end
end
