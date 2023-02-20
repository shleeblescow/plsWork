class CreateRuns < ActiveRecord::Migration[7.0]
  def change
    create_table :runs do |t|
      t.string :run_location
      t.datetime :when
      t.integer :mileage
      t.integer :run_type
      t.string :pace
      t.integer :creator_id
      t.string :integer
      t.boolean :bevs_after

      t.timestamps
    end
  end
end
