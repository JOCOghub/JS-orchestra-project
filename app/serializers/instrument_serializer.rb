class OrchestraSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name
    attribute :instruments do |orchestra|
      InstrumentSerializer.new(orchestra.instruments).as_json["data"]
    end
    # has_many :instruments
  end
  