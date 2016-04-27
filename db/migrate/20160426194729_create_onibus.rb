class CreateOnibus < ActiveRecord::Migration
  def change
    create_table :onibus do |t|
      t.string :placa
      t.references :empresa, index: true, foreign_key: true
      t.integer :num_assento
      t.boolean :assento_especial

      t.timestamps null: false
    end
  end
end
