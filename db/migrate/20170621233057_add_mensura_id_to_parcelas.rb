class AddMensuraIdToParcelas < ActiveRecord::Migration[5.0]
  def change
    add_reference :parcelas, :mensura, foreign_key: true
  end
end
