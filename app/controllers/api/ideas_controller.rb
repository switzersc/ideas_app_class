module Api
	class IdeasController < ApplicationController
		skip_filter :verify_authenticity_token

		def index
		end

		def show
			@idea = Idea.find(params[:id])
			render json: @idea
		end

		def create
			@idea = Idea.new(idea_params)
			if @idea.save
				render json: @idea
			else
				render plain: "fail"
			end
		end

		def update
		end

		def destroy
		end

		private

		def idea_params
			params.require(:idea).permit!
		end
		
	end


end