class CreateInstrumentos < ActiveRecord::Migration[5.0]
  def change
    create_table :instrumentos do |t|
      t.string :nome
      t.integer :professor_id
      t.integer :aluno_id

      t.timestamps
    end
  end
end
