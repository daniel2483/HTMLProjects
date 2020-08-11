class AddTipoToMedio < ActiveRecord::Migration
  def change
    add_column :medios, :tipo, :string
  end
end
