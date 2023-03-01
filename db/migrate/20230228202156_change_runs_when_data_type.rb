class ChangeRunsWhenDataType < ActiveRecord::Migration[7.0]
  def change
    change_column :runs, :when, :time
  end
end
