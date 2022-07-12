class ExperiencesController < ApplicationController

    def index 
        experiences = Experience.all
        render json: experiences
    end 

    def create 
        experience = Experience.create!(experience_params)
        render json: experience
    end 

    def update
        experience = find_experience
        experience.update!(experience_params)
        render json: experience
    end 

    def show 
        experience = find_experience
        render json: experience
    end 

    def destroy 
        experience = find_experience
        experience.destroy
        head :no_content 
    end 

    private 
    def experience_params
        params.permit(:user_id,:place_id,
        :location, :rating,
        :accompanied_by,
        :date_traveled,
        :highlights,
        :food_eaten,
        :drinks,
        :worst_moment,
        :weird_moment,
        :best_moment,
        :what_did_you_learn,
        :secrets,
        :story_of_how_we_met,
        :photo,
        :additional_notes)
    end 

    def find_experience 
        Experience.find_by(id: params[:id])
    end 
end
