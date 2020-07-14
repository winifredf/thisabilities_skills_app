class UsersController < ApplicationController
    get "/users/signup" do
        redirect_if_logged_in
        erb :'/users/signup'
    end


end