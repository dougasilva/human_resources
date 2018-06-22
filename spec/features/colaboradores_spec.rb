require 'rails_helper'

RSpec.feature 'Colaboradores', type: :feature do
  scenario 'Verifica formulário de Novo Colaborador' do
    visit(colaboradores_path)
    click_on('Novo Colaborador')
    expect(page).to have_content('Novo Colaborador')
  end

  scenario 'Cadastro de Colaborador Válido' do
    visit(new_colaborador_path)
    colaborador_name = Faker::Name.name
    fill_in('Nome', with: colaborador_name)
    choose(option: %w[F M].sample)
    fill_in('Data de Nascimento', with: Faker::Date.birthday(18, 40))
    fill_in('CPF', with: BRDocuments::CPF.generate(false))
    fill_in('RG', with: '273177072')
    fill_in('Logradouro', with: Faker::Address.street_name)
    fill_in('Numero', with: Faker::Address.building_number)
    fill_in('CEP', with: Faker::Address.postcode)
    fill_in('Bairro', with: Faker::Address.community)
    fill_in('Cidade', with: Faker::Address.city)
    fill_in('Estado', with: Faker::Address.state_abbr)
    fill_in('Telefone', with: Faker::PhoneNumber.phone_number)
    fill_in('Celular', with: Faker::PhoneNumber.phone_number)
    fill_in('Email', with: Faker::Internet.email)
    fill_in('Data de Entrada', with: Faker::Date.backward(14))

    click_on('Salvar')

    expect(page).to have_content('Colaborador criado')
    expect(Colaborador.last.nome).to eq(colaborador_name)
  end

  scenario 'Não cadastra um Colaborador inválido' do
    visit(new_colaborador_path)
    click_on('Salvar')
    expect(page).to have_content('não pode ficar em branco')
  end

  scenario 'Atualiza um colaborador' do
    colaborador = create(:colaborador)
    new_name = Faker::Name.name
    visit(edit_colaborador_path(colaborador.id))
    fill_in('Nome', with: new_name)
    click_on('Salvar')

    expect(page).to have_content('Colaborador atualizado')
    expect(Colaborador.last.nome).to eq(new_name)
  end

  scenario 'Apaga um colaborador' do
    create(:colaborador)
    visit colaboradores_path
    
    click_on 'Excluir'

    expect(page).to have_content('Colaborador excluído')
  end
end
