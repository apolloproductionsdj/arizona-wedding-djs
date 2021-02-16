module Api
    module V1 
        class DjsController < ApplicationController 
          protect_from_forgery with: :null_session
          def index 
            djs = Dj.all 

            render json: DjSerializer.new(djs, options).serialized_json  
          end

          def show 
            dj = Dj.find_by(slug: params[:slug])

            render json: DjSerializer.new(dj, options).serialized_json 
          end

          def create
            dj = Dj.new(dj_params)

            if dj.save 
                render json: DjSerializer.new(dj).serialized_json 
            else
                render json: {error: dj.errors.messages }, status: 422 
            end
          end

          def update 
            dj = Dj.find_by(slug: params[:slug])
    
            if dj.update(dj_params) 
                render json: DjSerializer.new(dj, options).serialized_json 
            else
                render json: {error: dj.errors.messages }, status: 422 
            end
          end

          def destroy
            dj = Dj.find_by(slug: params[:slug])

            if dj.destroy 
                head :no_content
            else
                render json: { error: dj.errors.messages }, status: 422
            end
          end

          private 

          def dj_params
            params.require(:dj).permit(:name, :image_url)
          end

          def options
            @options ||= { include: %i[reviews] }
          end
        end 
    end
end