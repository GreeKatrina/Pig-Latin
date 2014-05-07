require 'spec_helper.rb'

describe 'PigLatin' do

  let(:vowel) { PigLatin.translate('english') }
  let(:constant) { PigLatin.translate('rubbish') }
  let(:yfirst) { PigLatin.translate('yell') }
  let(:constants) { PigLatin.translate('shark') }
  let(:ynotfirst) { PigLatin.translate('rhythm') }

  describe '#vowel' do
    it 'should return a string with "way" at the end' do
      expect(vowel).to eq('englishway')
    end
  end

  describe '#constant' do
    it 'should return a string with the first constant and "ay" at the end' do
      expect(constant).to eq('ubbishray')
    end

    it 'should return a string with "yay" at the end' do
      expect(yfirst).to eq('ellyay')
    end

    it 'should return a string with the constants before the first vowel with "ay" at the end of the string' do
      expect(constants).to eq('arkshay')
    end
  end

  describe '#y_not_first' do
    it 'should return a string with the constants before y at the end with "ay"' do
      expect(ynotfirst).to eq('ythmrhay')
    end
  end

end
