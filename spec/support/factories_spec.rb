require 'rails_helper'
describe 'TestFactory' do
  FactoryBot.factories.map(&:name).each do |factory_name|
    describe "#{factory_name} factory" do
      # Test each factory
      it 'is valid' do
        factory = FactoryBot.build(factory_name)
        if factory.respond_to?(:valid?)
          expect(factory).to be_valid, -> { factory.errors.full_messages.join('\n') }
        end
      end
    end
  end
end
