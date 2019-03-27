require 'rails_helper'

RSpec.describe Cargo, type: :model do
  
  it 'is valid' do
    cargo = create(:cargo)
    expect(cargo).to be_valid
  end

  context 'Validates' do
    it { is_expected.to validate_presence_of(:nome) }
  end
end
