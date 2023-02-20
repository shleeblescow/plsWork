class CreateRunRunnerJoins < ActiveRecord::Migration[7.0]
  def change
    create_table :run_runner_joins do |t|
      t.integer :runner_id
      t.integer :run_id

      t.timestamps
    end
  end
end
