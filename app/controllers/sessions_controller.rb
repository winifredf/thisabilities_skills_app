class SessionsController < ApplicationController
    get '/login' do
        erb :"sessions/login"
    end

    post '/login' do
        binding.pry
        user = User.find_by(email: params[:email])

    end
end