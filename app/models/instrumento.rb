class Instrumento < ApplicationRecord
  has_many :alunos, through: :alunosinstrumento
  has_many :alunosinstrumento

end
