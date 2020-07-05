class SkillsController < ApplicationController
    get 'skills' do
      @skills = Skill.all
      erb :"skills/index"
    end
end