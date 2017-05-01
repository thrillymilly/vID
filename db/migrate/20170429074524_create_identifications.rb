class CreateIdentifications < ActiveRecord::Migration[5.0]
  def change
    create_table :identifications do |t|
      t.string :person_id
      t.string :confirm_count
      t.string :time_stamp
      t.string :video_id

      t.timestamps
    end
  end
end
