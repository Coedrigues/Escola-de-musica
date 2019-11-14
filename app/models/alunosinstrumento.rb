class Alunosinstrumento < ApplicationRecord
   belongs_to :aluno
   belongs_to :instrumento
end
