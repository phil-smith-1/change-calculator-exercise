require 'change_calculator'

RSpec.describe ChangeCalculator do
  it 'exists' do
    expect(defined? described_class).to be_truthy
  end

  describe '.denominations' do
    it 'returns the correct change for £0' do
      expect(described_class.denominations(0)).to eq(
        {
          '2': 0,
          '1': 0,
          '0.5': 0,
          '0.2': 0,
          '0.1': 0,
          '0.05': 0,
          '0.02': 0,
          '0.01': 0
        }
      )
    end

    it 'returns the correct change for £0.32' do
      expect(described_class.denominations(0.32)).to eq(
        {
          '2': 0,
          '1': 0,
          '0.5': 0,
          '0.2': 1,
          '0.1': 1,
          '0.05': 0,
          '0.02': 1,
          '0.01': 0
        }
      )
    end

    it 'returns the correct change for £1.53' do
      expect(described_class.denominations(1.53)).to eq(
        {
          '2': 0,
          '1': 1,
          '0.5': 1,
          '0.2': 0,
          '0.1': 0,
          '0.05': 0,
          '0.02': 1,
          '0.01': 1
        }
      )
    end

    it 'returns the correct change for £4.74' do
      expect(described_class.denominations(4.74)).to eq(
        {
          '2': 2,
          '1': 0,
          '0.5': 1,
          '0.2': 1,
          '0.1': 0,
          '0.05': 0,
          '0.02': 2,
          '0.01': 0
        }
      )
    end

    it 'returns the correct change for £11.28' do
      expect(described_class.denominations(11.28)).to eq(
        {
          '2': 5,
          '1': 1,
          '0.5': 0,
          '0.2': 1,
          '0.1': 0,
          '0.05': 1,
          '0.02': 1,
          '0.01': 1
        }
      )
    end

    it 'returns the correct change for £28.98' do
      expect(described_class.denominations(28.98)).to eq(
        {
          '2': 14,
          '1': 0,
          '0.5': 1,
          '0.2': 2,
          '0.1': 0,
          '0.05': 1,
          '0.02': 1,
          '0.01': 1
        }
      )
    end

    it 'returns the correct change for £51.31' do
      expect(described_class.denominations(51.31)).to eq(
        {
          '2': 25,
          '1': 1,
          '0.5': 0,
          '0.2': 1,
          '0.1': 1,
          '0.05': 0,
          '0.02': 0,
          '0.01': 1
        }
      )
    end

    it 'returns the correct change for £70' do
      expect(described_class.denominations(70)).to eq(
        {
          '2': 35,
          '1': 0,
          '0.5': 0,
          '0.2': 0,
          '0.1': 0,
          '0.05': 0,
          '0.02': 0,
          '0.01': 0
        }
      )
    end

    it 'returns the correct change for £87.1' do
      expect(described_class.denominations(87.1)).to eq(
        {
          '2': 43,
          '1': 1,
          '0.5': 0,
          '0.2': 0,
          '0.1': 1,
          '0.05': 0,
          '0.02': 0,
          '0.01': 0
        }
      )
    end

    it 'returns the correct change for £103.01' do
      expect(described_class.denominations(103.01)).to eq(
        {
          '2': 51,
          '1': 1,
          '0.5': 0,
          '0.2': 0,
          '0.1': 0,
          '0.05': 0,
          '0.02': 0,
          '0.01': 1
        }
      )
    end

    it 'returns the correct change for £2000' do
      expect(described_class.denominations(2000)).to eq(
        {
          '2': 1000,
          '1': 0,
          '0.5': 0,
          '0.2': 0,
          '0.1': 0,
          '0.05': 0,
          '0.02': 0,
          '0.01': 0
        }
      )
    end
  end
end
