class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :COD_SITE
      t.string :NOM_SITE
      t.string :ACCESO
      t.string :COORDENADAS
      t.integer :ID_ISLA
      t.text :DESCRIPCION
      t.string :ZONA

      t.timestamps
    end
  end
end
