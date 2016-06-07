require 'rails_helper'

RSpec.describe Product, type: :model do
  describe '#name' do
    context 'when it is missing' do
      before do
        subject.name = nil
      end

      it 'renders subject invalid' do
        subject.valid?

        expect(subject.errors[:name]).to include("can't be blank")
      end
    end
  end
end

