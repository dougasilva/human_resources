require 'rails_helper'

RSpec.describe Colaborador, type: :model do
  it 'is valid' do
    cargo = create(:cargo)
    expect(cargo).to be_valid
  end

  context 'validates_presence_of' do
    it { is_expected.to validate_presence_of(:nome) }
    it { is_expected.to validate_presence_of(:cpf) }
    it { is_expected.to validate_presence_of(:rg) }
    it { is_expected.to validate_presence_of(:dt_nascimento) }
    it { is_expected.to validate_presence_of(:dt_inicio) }
    it { is_expected.to validate_presence_of(:endereco) }
    it { is_expected.to validate_presence_of(:numero) }
    it { is_expected.to validate_presence_of(:cep) }
    it { is_expected.to validate_presence_of(:bairro) }
    it { is_expected.to validate_presence_of(:cidade) }
    it { is_expected.to validate_presence_of(:estado) }
    it { is_expected.to validate_presence_of(:telefone) }
    it { is_expected.to validate_presence_of(:celular) }
  end

  context 'validate_numericality_of' do
    it { should validate_numericality_of(:cpf) }
  end
  

  context 'Associations' do
    it { is_expected.to belong_to(:cargo) }
  end
end
