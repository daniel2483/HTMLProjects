class CreateDependencies < ActiveRecord::Migration
  def change
    create_table :dependencies do |t|
      t.integer :ID_SITES
      t.integer :ID_DEPENDENCIA

      t.timestamps
    end
  end
end
