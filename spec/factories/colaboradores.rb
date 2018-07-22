FactoryBot.define do
  factory :colaborador do
    nome { Faker::Name.name }
    sexo { %w[F M].sample }
    dt_nascimento { Faker::Date.birthday(18, 40) }
    cpf { BRDocuments::CPF.generate(false) }
    rg '273177072'
    endereco { Faker::Address.street_name }
    numero { Faker::Address.building_number }
    cep { Faker::Address.zip_code }
    bairro { Faker::Address.community }
    cidade { Faker::Address.city }
    estado { Faker::Address.state_abbr }
    telefone { Faker::PhoneNumber.phone_number }
    celular { Faker::PhoneNumber.phone_number }
    email { Faker::Internet.email }
    foto { "#{Rails.root}/spec/fixtures/avatar.png" }
    dt_inicio { Faker::Date.backward(14) }
    dt_saida { Faker::Date.forward(500) }
    cargo
  end
end
