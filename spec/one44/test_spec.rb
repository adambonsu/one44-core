# frozen_string_literal: true

module One44
  describe Test do
    let(:game) { 'indigo' }
    let(:output) { double('output').as_null_object }
    let(:questions) { ['5x5'] }
    let(:test) { Test.new(output) }

    describe '#start' do
      it 'sends a welcome message' do
        expect(output).to receive(:puts).with("Welcome to one44 - #{game}")
        test.start(game, questions)
      end
      it 'provides the first question, prompting for an answer' do
        expect(output).to receive(:print).with("#{questions.first}:")
        test.start(game, questions)
      end
    end
    describe '#provide' do
      it 'sends mark for answer to output' do
        test.start(game, questions)
        expect(output).to receive(:print).with('CORRECT')
        test.provide 25
      end
    end
    describe '#result' do
      context 'all questions not answered yet' do
        it 'sends FAIL to output' do
          test.start(game, questions)
          expect(output).to receive(:print).with('FAIL')
          test.result
        end
      end
      context 'all questions answered' do
        context 'all answers are correct' do
          it 'sends PASS to output' do
            test.start(game, questions)
            test.provide 25
            expect(output).to receive(:print).with('PASS')
            test.result
          end
        end
        context 'one or more questions incorrect' do
          it 'sends FAIL to output' do
            test.start(game, questions)
            test.provide 99
            expect(output).to receive(:print).with('FAIL')
            test.result
          end
        end
      end
    end
  end
end
