class SkillsController < ApplicationController
    get '/skills' do
        binding.pry
        @skills = Skill.all
        erb :"skills/index"
    end

    get '/skills/new' do
        @users = User.all
        erb :"skills/new"
    end

    get '/skills/:id/edit' do
        @users = User.all
        @skill = Skill.find_by_id(params[:id])
        erb :"skills/edit"

    end

    patch '/skills/:id' do
        @skill = Skill.find_by_id(params[:id])
        params.delete("_method")
        if @skill.update(params)
            redirect "/skills/#{@skill.id}"         
        else
            redirect "/skills/#{@skills.id}/edit"
        end
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

    delete '/skills/:id' do
        @skill = Skill.find_by_id(params[:id])
        @skill.destroy
        redirect '/skills'
    end
end