class CreateTransacaos < ActiveRecord::Migration[5.0]
  def change
    create_table :transacaos do |t|
      t.integer :empresa_origem_id
      t.integer :empresa_destino_id
      t.string :relacaoNegocio
      t.string :formaPagameto
      t.datetime :dataPagamento
      t.string :documento
      t.decimal :valor
      t.datetime :dataEmissao
      t.string :justificativa

      t.timestamps
    end
  end
end
