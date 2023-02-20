class CreateWxCards < ActiveRecord::Migration[7.0]
  def change
    create_table :wx_cards do |t|
      t.string :location
      t.string :forecast
      t.text :suggestion
      t.integer :runner_id

      t.timestamps
    end
  end
end
