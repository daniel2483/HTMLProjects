class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :CODiGO
      t.string :NOMBRE
      t.string :ISLA
      t.integer :MEDIO
      t.string :ISLA
      t.integer :TIPO
      t.string :IP
      t.string :new
      t.string :show

      t.timestamps
    end
  end
end
