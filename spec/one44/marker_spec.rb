# frozen_string_literal: true

module One44
  describe Marker do
    let(:question) { '5x5' }
    let(:marker) { Marker.new }

    describe '#clean' do
      it "replaces 'x' with '*'" do
        expect(marker.clean(question)).to eq '5*5'
      end
    end
    describe '#mark' do
      context 'correct answer' do
        it 'marks answer as CORRECT' do
          expect(marker.mark(question, 25)).to eq 'CORRECT'
        end
      end
      context 'incorrect answer' do
        it 'marks answer as INCORRECT' do
          expect(marker.mark(question, 99)).to eq 'INCORRECT'
        end
      end
    end
  end
end
