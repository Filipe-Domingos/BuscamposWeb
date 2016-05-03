
feature 'Gerenciar Ponto' do
  
  scenario 'Incluir Ponto' do 
    visit new_ponto_path
    preencher_e_verificar_ponto
  end

  scenario 'Alterar Ponto' do 
    ponto = FactoryGirl.create(:ponto)
    visit edit_ponto_path(ponto)
    preencher_e_verificar_ponto

  end

  scenario 'Excluir Ponto' do 
    ponto = FactoryGirl.create(:ponto)
    visit pontos_path
    click_link('Destroy')

  end

  def preencher_e_verificar_ponto

    fill_in 'Nome Rua',     :with => "Mario Luiz Vieira"
    fill_in 'Nome Bairro',  :with => "Jockey Club"
    fill_in 'Latitude',     :with => "-21.7784648"
    fill_in 'Longitude', :with => "-41.2886039"

    click_button 'Salvar'

    expect(page).to have_content 'Rua: Mario Luiz Vieira'
    expect(page).to have_content 'Bairro: Jockey Club'
    expect(page).to have_content 'Latitude: -21.7784648'
  expect(page).to have_content 'Longitude: -41.2886039'

  end
end