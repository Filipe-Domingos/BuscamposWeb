#gerenciar_linha_spec.rb
feature 'Gerenciar Linha' do

  before(:each) do
    @ponto = create(:ponto, rua: "Mario Luiz Vieira")
  end

  let(:dados) do {
    nome: "PT-001",
    rua: "Mario Luiz Vieira"
   }
  end

  scenario 'Incluir Linha' do #, :js => true  do
    visit new_linha_path
    preencher(dados)
    click_button 'Save'
    verificar(dados)
  end

  scenario 'Alterar Linha' do #, :js => true  do
    linha = FactoryGirl.create(:linha, ponto: @ponto)
    visit edit_linha_path(linha)
    preencher(dados)
    click_button 'Save'
    verificar(dados)
  end

  scenario 'Excluir Linha' do #, :js => true  do
    linha = FactoryGirl.create(:linha, ponto: @ponto)
    visit linhas_path
    click_link 'Excluir'
  end

  def preencher(dados)
    fill_in 'Nome',  with: dados[:nome]
    select dados[:rua], from: "Ponto"
  end
 
  def verificar(dados)
    page.should have_content "Nome: #{dados[:nome]}"
    page.should have_content "Ponto: #{dados[:rua]}"
  end
end