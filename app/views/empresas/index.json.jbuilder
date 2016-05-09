json.empresa!(@empresas) do |empresa|
  json.extract! empresa, :id, :nome, :cnpj, :telefone, :endereco
  json.url empresa_url(empresa, format: :json)
end
