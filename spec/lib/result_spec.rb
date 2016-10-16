require 'spec_helper'

RSpec.describe Result do
  subject(:schema_result) { described_class.call(input) }

  let(:raw) { { stdout: '', stderr: '', exit_code: 0 } }

  let(:valid_input) do
    {
      raw: raw,
      offenses: [],
      metadata: nil
    }
  end

  let(:input) { valid_input }

  context 'valid input' do
    it { expect { schema_result }.not_to raise_error }
  end

  describe '#raw' do
    context 'when it is not present' do
      before { input.delete(:raw) }

      it { expect { schema_result }.to raise_error(InvalidAttributes) }
    end

    context 'when it is not valid' do
      before { input[:raw] = rand }

      it { expect { schema_result }.to raise_error(InvalidAttributes) }
    end
  end
end
