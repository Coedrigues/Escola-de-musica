json.extract! aluno, :id, :nome, :instrumento, :cpf, :identidade, :nascimento, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
