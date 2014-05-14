class TextCentering

  def initialize(lines)
    @lines = lines
  end

  def centered
    longest_string_length = 0
    @lines.each_with_index do |line|
      longest_string_length = line.length if line.length > longest_string_length
    end
    longest_string_length
    centered_text = ''
    @lines.each do |line|
      extra_space = (longest_string_length - line.length) %2
      spaces_to_add = (longest_string_length - line.length) /2
      centered_text << " " * spaces_to_add + "#{line}\n"
    end
    centered_text.to_s
  end

end