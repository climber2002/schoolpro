class ImportProvincesFromShp < ActiveRecord::Migration
  def up
    from_shp_sql = `shp2pgsql -c -g geom -W LATIN1 -s 4326 #{Rails.root.join('db', 'shpfiles', 'GAB_adm1.shp')} provinces_ref`

    Province.transaction do
      execute from_shp_sql

      execute <<-SQL
          insert into provinces(name, geom) 
            select name_1, geom from provinces_ref
      SQL

      drop_table :provinces_ref
    end
  end

  def down
    Province.delete_all
  end
end
