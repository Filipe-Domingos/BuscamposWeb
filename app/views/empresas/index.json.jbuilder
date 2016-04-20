json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :nomeEmpresa, :cnpj, :telefone, :endereco
  json.url empresa_url(empresa, format: :json)
end
