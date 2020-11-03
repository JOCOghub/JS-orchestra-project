class InstrumentsController < ApplicationController

    def create
      instrument = Instrument.new(instrument_params)
      if instrument.save
        render json: InstrumentSerializer.new(instrument)
      else
        render json: {message: instrument.errors.full_messages}
      end
    end
  
    def destroy
      instrument = Instrument.find_by(id: params[:id])
      instrument.destroy
      render json: {message: "success"}
    end

    private
  
    def instrument_params
      params.require(:instrument).permit(:content, :orchestra_id)
    end
  
  end