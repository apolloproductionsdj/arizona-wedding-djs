module Api
    module V1 
        class ReviewsController < ApplicationController 
            protect_from_forgery with: :null_session

          def create 
            review = dj.reviews.new(review_params)

            if review.save 
                render json: ReviewSerializer.new(review).serialized_json 
            else 
                render json: { error: review.errors.messages }, status: 422
            end 
          end 

          def destroy 
            review = Review.find(params[:id])

            if review.destroy 
                head :no_content
            else
                render json: { error: review.errors.messages }, status: 422
            end
          end

          private 

          def dj 
            @dj ||= Dj.find(params[:dj_id])
          end

          def review_params
            params.require(:review).permit(:title, :description, :score, :dj_id)
          end   
        end 
    end
end