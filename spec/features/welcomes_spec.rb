require 'rails_helper'

RSpec.feature 'Welcome', type: :feature do
  scenario 'Mostra mensagem de Bem-Vindo' do
    visit(root_path)
    expect(page).to have_content('Bem Vindo')
  end

  scenario 'Verificar link de Cadastro de Colaborador' do
    visit(root_path)
    expect(find('ul li')).to have_link('Cadastro de Colaborador')
  end
end
