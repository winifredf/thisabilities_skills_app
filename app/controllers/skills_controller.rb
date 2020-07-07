class SkillsController < ApplicationController
    get '/skills' do
        @skills = Skill.all
        erb :"skills/index"
    end

    get '/skills/new' do
        @users = User.all
        erb :"skills/new"
    end

    get '/skills/:id/edit' do
        @users = user.all
        @skill = Skill.find_by_id(params[:id])
        erb :"skills/edit"

    end

    post '/skills' do
        skill = Skill.new(params)
        if skill.save
            redirect "skills/#{skill.id}"
        else
            redirect "skills/new"
            
        end
    end

    get '/skills/:id' do
        @skill = Skill.find_by_id(params["id"])
        erb :"skills/show"
    end
end