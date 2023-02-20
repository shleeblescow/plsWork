class CreateRunners < ActiveRecord::Migration[7.0]
  def change
    create_table :runners do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :neighborhood
      t.integer :age
      t.text :bio
      t.string :running_deets

      t.timestamps
    end
  end
end
