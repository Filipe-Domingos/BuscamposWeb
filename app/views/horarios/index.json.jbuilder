json.array!(@horarios) do |horario|
  json.extract! horario, :id, :onibu_id, :linha_id, :hora
  json.url horario_url(horario, format: :json)
end
