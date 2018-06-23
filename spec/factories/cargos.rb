FactoryBot.define do
  factory :cargo do
    nome { Faker::Company.profession }
    descricao 'Cargo de confiança'
  end
end
