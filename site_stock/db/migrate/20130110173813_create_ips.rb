class CreateIps < ActiveRecord::Migration
  def change
    create_table :ips do |t|
      t.string :IP
      t.integer :ID_SITES
      t.string :ID_IP_TYPES

      t.timestamps
    end
  end
end
