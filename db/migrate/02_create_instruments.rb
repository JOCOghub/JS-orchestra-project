class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.string :content
      t.references :orchestra, null: false, foreign_key: true

      t.timestamps
    end
  end
end
