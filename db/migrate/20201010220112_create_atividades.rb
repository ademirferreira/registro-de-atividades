class CreateAtividades < ActiveRecord::Migration[6.0]
  def change
    create_table :atividades do |t|
      t.date :data
      t.string :descricao
      t.string :ferramenta
      t.integer :carga_horaria

      t.timestamps
    end
  end
end
