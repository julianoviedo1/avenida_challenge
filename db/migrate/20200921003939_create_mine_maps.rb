class CreateMineMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :mine_maps do |t|

      t.timestamps
    end
  end
end
