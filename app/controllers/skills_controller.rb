class SkillsController < ApplicationController
    get '/skills' do
        redirect_if_not_logged_in
        if current_user.skills != []
            @user_skills = current_user.skills.all
        end
        @skills = Skill.all
        erb :"skills/index"
    end

    get '/skills/new' do
        redirect_if_not_logged_in
        @users = User.all
        erb :"skills/new"
    end

    post '/skills' do
        skill = Skill.new(params)
        if skill.save
            redirect "/skills/#{skill.id}"
        else
            redirect "/skills/new"     
        end
    end

    get '/skills/:id/edit' do
        redirect_if_not_logged_in
        @users = User.all
        @skill = Skill.find_by_id(params[:id])
        if @skill.user.id == current_user.id
            erb :"skills/edit"
        else
            redirect "/skills"
        end
    end

    patch '/skills/:id' do
        @skill = Skill.find_by_id(params[:id])
        params.delete("_method")
        if @skill.update(params)
            redirect "/skills/#{@skill.id}"         
        else
            redirect "/skills/#{@skill.id}/edit"
        end
    end

    
    get '/skills/:id' do
        redirect_if_not_logged_in
        @skill = Skill.find_by_id(params["id"])
        erb :"skills/show"
    end

    delete '/skills/:id' do
        @skill = Skill.find_by_id(params[:id])
        if @skill.user.id == current_user.id
            @skill.destroy
            redirect "/skills"
        else
            redirect "/skills"
        end
    end
end