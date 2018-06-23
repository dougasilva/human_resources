require 'rails_helper'

RSpec.feature "Cargos", type: :feature do
  scenario 'Verifica formulário de Novo Cargo' do
    visit(cargos_path)
    click_on('Novo Cargo')
    expect(page).to have_content('Novo Cargo')
  end

  scenario 'Cadastro de Cargo Válido' do
    visit(new_cargo_path)
    cargo_name = Faker::Company.profession
    fill_in('Nome', with: cargo_name)
    fill_in('Descrição', with: 'Descrição de cargo')

    click_on('Salvar')

    expect(page).to have_content('Cargo criado')
    expect(Cargo.last.nome).to eq(cargo_name)
  end

  scenario 'Não cadastra um Cargo inválido' do
    visit(new_cargo_path)
    click_on('Salvar')
    expect(page).to have_content('não pode ficar em branco')
  end

  scenario 'Atualiza um Cargo' do
    cargo = create(:cargo)
    new_name = Faker::Company.profession
    visit(edit_cargo_path(cargo.id))
    fill_in('Nome', with: new_name)
    click_on('Salvar')

    expect(page).to have_content('Cargo atualizado')
    expect(Cargo.last.nome).to eq(new_name)
  end

  scenario 'Apaga um Cargo' do
    create(:cargo)
    visit cargos_path

    click_on 'Excluir'

    expect(page).to have_content('Cargo excluído')
  end
end
