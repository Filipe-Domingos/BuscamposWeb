# coding: utf-8
feature 'Gerenciar Empresa' do

  scenario 'Incluir Empresa' do 
    visit new_empresa_path
    preencher_e_verificar_empresa
  end

  scenario 'Alterar Empresa' do 
    empresa = FactoryGirl.create(:empresa)
    visit edit_empresa_path(empresa)
    preencher_e_verificar_empresa

  end

   scenario 'Excluir empresa' do 
    empresa = FactoryGirl.create(:empresa)
    visit empresas_path
    #click_link("Excluir", :match => :first)
    click_link("Excluir")

  end

  def preencher_e_verificar_empresa

      fill_in 'Nome Empresa',     :with => "CTC"
      fill_in 'CNPJ',  :with => "20.987.098/0001-34"
      fill_in 'Telefone',     :with => "(22) 99988-1122"
      fill_in 'Endereço', :with => "Rua Sao Jose"

      click_button 'Save'

      expect(page).to have_content 'Nomeempresa: CTC'
      expect(page).to have_content 'Cnpj: 20.987.098/0001-34'
      expect(page).to have_content 'Telefone: (22) 99988-1122'
      expect(page).to have_content 'Endereco: Rua Sao Jose'

  end
end