class CreateAlunosinstrumentos < ActiveRecord::Migration[5.0]
  def change
    create_table :alunosinstrumentos do |t|
      t.integer :aluno_id
      t.integer :instrumento_id

      t.timestamps
    end
  end
end
