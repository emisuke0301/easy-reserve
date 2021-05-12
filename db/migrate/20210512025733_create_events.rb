class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string     :event_name, null: false
      t.date       :date,       null: false
      t.time       :open_time,  null: false
      t.time       :start_time, null: false
      t.string     :place,      null: false
      t.integer    :price_adv,  null: false
      t.integer    :price_door, null: false
      t.integer    :capacity,   null: false
      t.integer    :genre_id,   null: false
      t.text       :event_text
      t.text       :precautions
      t.references :user,       foreign_key: true
      t.timestamps
    end
  end
end
