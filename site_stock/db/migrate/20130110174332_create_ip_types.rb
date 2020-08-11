class CreateIpTypes < ActiveRecord::Migration
  def change
    create_table :ip_types do |t|
      t.string :DESCRIPCION

      t.timestamps
    end
  end
end
