class AddParcelaIdToMensuras < ActiveRecord::Migration[5.0]
  def change
    add_column :mensuras, :parcela_id, :integer
  end
end
