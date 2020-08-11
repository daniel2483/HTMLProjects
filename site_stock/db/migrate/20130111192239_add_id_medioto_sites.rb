class AddIdMediotoSites < ActiveRecord::Migration
  def up
	add_column :sites, :ID_MEDIO, :integer 
  end


  def down
	remove_column :sites, :ID_MEDIO
  end
end
