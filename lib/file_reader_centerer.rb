require_relative '../lib/text_centering'

class FileReaderCenterer

  def initialize(input_directory, output_directory)
    @input_files = input_directory + '/*.txt'
    @output_directory = output_directory
  end

  def write_centered_files
    Dir[@input_files].each do |file|
      lines = File.readlines(file)
      centered_lines = TextCentering.new(lines).centered
      centered_lines
      output_file = File.join(@output_directory, File.basename(file))
      output = File.open(output_file, 'w')
      output.write(centered_lines)
      output.close
    end
  end

end
