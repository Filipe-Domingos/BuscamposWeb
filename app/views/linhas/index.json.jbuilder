json.array!(@linhas) do |linha|
  json.extract! linha, :id, :nome, :ponto_id
  json.url linha_url(linha, format: :json)
end
