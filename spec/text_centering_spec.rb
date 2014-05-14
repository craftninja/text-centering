require 'rspec'
require_relative '../lib/text_centering'

describe 'it can center text' do

  it 'can center two lines of even length' do
    line_01 = 'Emily is totally great at coding'
    line_02 = 'And nice'

    expected = <<EXPECTED
Emily is totally great at coding
            And nice
EXPECTED


    text_centering = TextCentering.new([line_01,line_02])
    actual = text_centering.centered
    expect(actual).to eq(expected)
  end
  it 'can center two lines of uneven length' do
    line_01 = 'Emily is totally great at coding'
    line_02 = 'And nice!'

    expected = <<EXPECTED
Emily is totally great at coding
           And nice!
EXPECTED


    text_centering = TextCentering.new([line_01,line_02])
    actual = text_centering.centered
    expect(actual).to eq(expected)
  end

  it 'can center two lines of uneven length' do
    line_01 = 'Emily is totally great at coding!'
    line_02 = 'And nice'

    expected = <<EXPECTED
Emily is totally great at coding!
            And nice
EXPECTED


    text_centering = TextCentering.new([line_01,line_02])
    actual = text_centering.centered
    expect(actual).to eq(expected)
  end
end