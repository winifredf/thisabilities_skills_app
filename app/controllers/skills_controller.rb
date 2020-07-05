class SkillsController < ApplicationController
    get '/skills' do
        @skills = Skill.all
        erb :"skills/index"
    end

    get '/skills/new' do
        erb :"skills/new"
    end

    get '/skills/:id' do
        @skill = Skill.find_by_id(params["id"])
        erb :"skills/show"
    end
end