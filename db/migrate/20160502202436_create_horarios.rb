class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.references :onibu, index: true, foreign_key: true
      t.references :linha, index: true, foreign_key: true
      t.string :hora

      t.timestamps null: false
    end
  end
end
