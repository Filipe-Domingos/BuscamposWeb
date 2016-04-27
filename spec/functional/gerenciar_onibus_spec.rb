
#gerenciar_onibus_spec.rb
feature 'Gerenciar Onibus' do

  before(:each) do
    @empresa = create(:empresa, nomeEmpresa: "CTC")
  end

  let(:dados) do {
    placa: "LNI-2345",
    nomeEmpresa: "CTC",
    num_assento: 34,
    assento_especial: "true"
   }
  end

  scenario 'Incluir Onibus' do #, :js => true  do
    visit new_onibu_path
    preencher(dados)
    click_button 'Save'
    verificar(dados)
  end

  scenario 'Alterar Onibus' do #, :js => true  do
    onibu = FactoryGirl.create(:onibu, empresa: @empresa)
    visit edit_onibu_path(onibu)
    preencher(dados)
    click_button 'Save'
    verificar(dados)
  end

  scenario 'Excluir Onibus' do #, :js => true  do
    onibu = FactoryGirl.create(:onibu, empresa: @empresa)
    visit onibus_path
    click_link 'Excluir'
  end

  def preencher(dados)
    fill_in 'Placa',  with: dados[:placa]
    select dados[:nomeEmpresa], from: "Empresa"
    fill_in 'Numero Assento',  with: dados[:num_assento]
    page.check 'Assento Especial'
  end
 
  def verificar(dados)
    page.should have_content "Placa: #{dados[:placa]}"
    page.should have_content "Empresa: #{dados[:nomeEmpresa]}"
    page.should have_content "Num assento: #{dados[:num_assento]}"
    page.should have_content "Assento especial: #{dados[:assento_especial]}"
  end
end