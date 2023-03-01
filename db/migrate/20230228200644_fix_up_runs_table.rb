class FixUpRunsTable < ActiveRecord::Migration[7.0]
  def change
    change_column :runs, :run_type, :string
    remove_column :runs, :integer
    add_column :runs, :notes, :string
  end
end
