class CreateEmpresas < ActiveRecord::Migration[5.0]
  def change
    create_table :empresas do |t|
      t.string :nome
      t.string :cnpj
      t.string :certame
      t.string :objeto
      t.string :participante

      t.timestamps
    end
  end
end
