class TextAnalyzer
  def process
    File.open('sample.txt', 'r') do |file|
      yield(file.read)
    end
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |file| puts "#{file.split(' ').size} words" }
analyzer.process { |file| puts "#{file.split(/\s\s+/).size} paragraphs" }
analyzer.process { |file| puts "#{file.split("\n").size} lines" }
