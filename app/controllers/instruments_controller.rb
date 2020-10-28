class InstrumentsController < ApplicationController

    def create
      instrument = Instrument.new(instrument_params)
      if instrument.save
        render json: InstrumentSerializer.new(instrument)
      else
          render json: {message: instrument.errors.full_messages}
      end
    end
  
    private
  
    def instrument_params
      params.require(:instrument).permit(:content, :orchestra_id)
    end
  
  end