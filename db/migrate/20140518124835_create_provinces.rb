class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name, :unique => true, :null => false
      t.multi_polygon :geom, :srid => 4326
      t.timestamps
    end

    change_table :provinces do |t|
      t.index :geom, :spatial => true
    end
  end
end
