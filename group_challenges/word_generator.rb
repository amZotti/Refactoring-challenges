class FakeTextGenerator
  def initialize(minimum_number_of_words)
    @sentences = []
    @minimum_number_of_words = minimum_number_of_words
  end

  def generate
    word_count = 0

    while word_count <= @minimum_number_of_words
      @sentences << Sentence.new
      word_count += @sentences.last.word_count
    end
  end

  def render
    @sentences.join(" ")
  end
end

class Sentence
  def initialize
    @word_count = (3..8).to_a.sample
    @words = @word_count.times.map { Word.new.to_s }
  end

  attr_reader :word_count

  def to_s
    @words.join(" ")
  end
end

class Word
  def to_s
    (1..12).to_a.sample.times.map { ("a".."z").to_a.sample }.join
  end
end

fake_text_generator = FakeTextGenerator.new(10)
fake_text_generator.generate
puts fake_text_generator.render

