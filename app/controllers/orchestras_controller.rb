class OrchestrasController < ApplicationController

    def index
      # options = {
      #    include: [:instruments]
      #  }
      # render({json: Orchestra.all, include: [:instruments]})
      # render json: Orchestra.all, include: [instruments: {only: [:content]}], except: [:created_at, :updated_at]
      render json: OrchestraSerializer.new(Orchestra.all)
      # render json: OrchestraSerializer.new(Orchestra.all, options)
    end
  
    def create
      orchestra = Orchestra.new(orchestra_params)
      if orchestra.save
        render json: OrchestraSerializer.new(orchestra)
      else
        render json: {message: orchestra.errors.full_messages}
      end
    end
  
    def destroy
      orchestra = Orchestra.find_by(id: params[:id])
      orchestra.destroy
      render json: {message: "success"}
    end
  
    private
  
    def orchestra_params
      params.require(:orchestra).permit(:name)
    end
  
  
  end