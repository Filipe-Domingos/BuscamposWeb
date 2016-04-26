json.array!(@pontos) do |ponto|
  json.extract! ponto, :id, :rua, :bairro, :latitude, :longitude
  json.url ponto_url(ponto, format: :json)
end
