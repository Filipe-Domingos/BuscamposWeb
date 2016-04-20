class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nomeEmpresa
      t.string :cnpj
      t.string :telefone
      t.string :endereco

      t.timestamps null: false
    end
  end
end
