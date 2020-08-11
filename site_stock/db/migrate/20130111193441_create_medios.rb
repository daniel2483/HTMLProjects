class CreateMedios < ActiveRecord::Migration
  def change
    create_table :medios do |t|

      t.timestamps
    end
  end
end
