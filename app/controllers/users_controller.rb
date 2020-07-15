class UsersController < ApplicationController
    get "/users/signup" do
        redirect_if_logged_in
        erb :'/users/signup'
    end

    post "/users" do
        @user = User.new(params)
        binding.pry
        if @user && @user.save
            session[:user_id] = @user.id
            redirect "/skills"
        else
            erb :"users/signup"
        end
    end

end