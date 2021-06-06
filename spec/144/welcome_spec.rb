# frozen_string_literal: true

module One44
  describe Welcome do
    let(:output) { double('output').as_null_object }
    let(:text) { 'Welcome to 144' }
    let(:welcome) { Welcome.new(output) }

    describe '#message' do
      it 'sends text to output' do
        expect(output).to receive(:puts).with(text)
        welcome.message(text)
      end
    end
  end
end
