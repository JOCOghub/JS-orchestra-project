class Instrument < ApplicationRecord
    belongs_to :orchestra
    validates :content, presence: true
  end