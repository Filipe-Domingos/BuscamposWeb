#gerenciar_onibus_spec.rb
feature 'Gerenciar Onibus' do

  before(:each) do
    @empresa = create(:empresa, nome: "Empresa Brasil Transporte")
  end

  let(:dados) do {
    nome: "Empresa Brasil Transporte",
    placa: "LNI-2345",
    num_assento: 34,
    assento_especial: "true"
   }
  end

  scenario 'Incluir Onibus' do #, :js => true  do
    visit new_onibu_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Alterar Onibus' do #, :js => true  do
    onibu = FactoryGirl.create(:onibu, empresa: @empresa)
    visit edit_onibu_path(onibu)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Excluir Onibus' do #, :js => true  do
    onibu = FactoryGirl.create(:onibu, empresa: @empresa)
    visit onibus_path
    click_link 'Destroy'
  end

  def preencher(dados)
    select dados[:nome], from: "Empresa"
    fill_in 'Placa',  with: dados[:placa]
    fill_in 'Número Assento',  with: dados[:num_assento]
    page.check 'Assento Especial'
  end
 
  def verificar(dados)
    page.should have_content "Empresa: #{dados[:nome]}"
    page.should have_content "Placa: #{dados[:placa]}"
    page.should have_content "Num assento: #{dados[:num_assento]}"
    page.should have_content "Assento especial: #{dados[:assento_especial]}"
  end
end