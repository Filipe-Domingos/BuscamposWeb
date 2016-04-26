class CreatePontos < ActiveRecord::Migration
  def change
    create_table :pontos do |t|
      t.string :rua
      t.string :bairro
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
