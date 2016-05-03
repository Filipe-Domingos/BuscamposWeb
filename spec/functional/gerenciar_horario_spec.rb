feature 'Gerenciar Horário' do

  before(:each) do
    @onibus = create(:onibu, placa: "LNI-2345")
    @linha = create(:linha, nome: "CG-100")
  end

  let(:dados) do {
    onibu: "LNI-2345",
    linha: "CG-100",
    hora: "12:00"
   }
  end

  scenario 'Incluir Horário' do #, :js => true  do
    visit new_horario_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Alterar Horário' do #, :js => true  do
    horario = FactoryGirl.create(:horario, onibu: @onibus, linha: @linha)
    visit edit_horario_path(horario)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Excluir Horário' do #, :js => true  do
    horario = FactoryGirl.create(:horario, onibu: @onibus, linha: @linha)
    visit horarios_path
    click_link 'Destroy'
  end

  def preencher(dados)
    select dados[:onibu], from: "Placa Ônibus"
    select dados[:linha], from: "Nome Linha"
    fill_in 'Hora',  with: dados[:hora]
  end

  def verificar(dados)
    page.should have_content "Onibu: #{dados[:onibu]}"
    page.should have_content "Linha: #{dados[:linha]}"
    page.should have_content "Hora: #{dados[:hora]}"
  end
end
