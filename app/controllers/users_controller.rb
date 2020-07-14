class UsersController < ApplicationController
    get "/users/signup" do
        redirect_if_logged_in
        erb :'/users/signup'
    end

    post "/users" do
        binding.pry
    end

end