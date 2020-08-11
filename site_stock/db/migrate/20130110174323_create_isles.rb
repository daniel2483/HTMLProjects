class CreateIsles < ActiveRecord::Migration
  def change
    create_table :isles do |t|
      t.string :NOMBRE_ISLA

      t.timestamps
    end
  end
end
