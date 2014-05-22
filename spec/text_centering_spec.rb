require 'rspec'
require_relative '../lib/text_centering'

describe 'it can center text' do

  it 'can center two lines of even length' do
    line_01 = '1234'
    line_02 = '12'
    expected = <<EXPECTED
1234
 12
EXPECTED
    text_centering = TextCentering.new([line_01,line_02])
    actual = text_centering.centered
    expect(actual).to eq(expected)
  end

  it 'can center two lines of uneven length' do
    line_01 = '123456'
    line_02 = '123'
    expected = <<EXPECTED
123456
 123
EXPECTED
    text_centering = TextCentering.new([line_01,line_02])
    actual = text_centering.centered
    expect(actual).to eq(expected)
  end

  it 'can center two lines of uneven length' do
    line_01 = '12345'
    line_02 = '12'
    expected = <<EXPECTED
12345
 12
EXPECTED
    text_centering = TextCentering.new([line_01,line_02])
    actual = text_centering.centered
    expect(actual).to eq(expected)
  end

  it 'can center two lines of text ignoring any whitespaces at beginning' do
    line_01 = '1234'
    line_02 = '    12'
    expected = <<EXPECTED
1234
 12
EXPECTED
    text_centering = TextCentering.new([line_01,line_02])
    actual = text_centering.centered
    expect(actual).to eq(expected)
  end

end
