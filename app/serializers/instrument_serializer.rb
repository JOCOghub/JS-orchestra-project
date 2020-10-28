class InstrumentSerializer
    include FastJsonapi::ObjectSerializer
    attributes :content, :orchestra_id
    # belongs_to :orchestra
  end