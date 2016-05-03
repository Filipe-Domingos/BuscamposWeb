json.array!(@onibus) do |onibu|
  json.extract! onibu, :id, :empresa_id, :placa, :num_assento, :assento_especial
  json.url onibu_url(onibu, format: :json)
end
