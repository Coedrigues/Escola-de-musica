class AddProfessorIdToAluno < ActiveRecord::Migration[5.0]
  def change
    add_column :alunos, :professor_id, :integer
  end
end
