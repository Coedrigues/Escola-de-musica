class Aluno < ApplicationRecord
  belongs_to :professor 
  has_many :instrumentos, through: :alunosinstrumento
  has_many :alunosinstrumento
end
