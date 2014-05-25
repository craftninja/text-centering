require_relative '../lib/file_reader_centerer'

describe FileReaderCenterer do
  before do
    test_file = File.expand_path('../../data_output/test_output.txt', __FILE__)
    File.delete(test_file) if File.exist?(test_file)
  end

  it 'has centered files in the data_output directory' do
    data_path = File.expand_path('../../data/', __FILE__)
    output_path = File.expand_path('../../data_output/', __FILE__)
    file_reader_center = FileReaderCenterer.new(data_path, output_path)
    file_reader_center.write_centered_files

    actual_path = File.expand_path('../../data_output/test.txt', __FILE__)
    p actual_path
    actual = File.read(actual_path)
    p actual
    expected = <<EXPECTED
1234
 12
EXPECTED
    expect(actual).to eq(expected)
  end

end
