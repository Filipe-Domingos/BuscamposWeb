json.array!(@onibus) do |onibu|
  json.extract! onibu, :id, :placa, :empresa_id, :num_assento, :assento_especial
  json.url onibu_url(onibu, format: :json)
end
