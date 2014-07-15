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
  MINIMUM_NUMBER_OF_WORDS = 3
  MAXIMUM_NUMBER_OF_WORDS = 8

  def initialize
    @word_count = (MINIMUM_NUMBER_OF_WORDS..MAXIMUM_NUMBER_OF_WORDS).to_a.sample
    @words = @word_count.times.map { Word.new.to_s }
  end

  attr_reader :word_count

  def to_s
    @words.join(" ")
  end
end

class Word
  MINIMUM_NUMBER_OF_LETTERS = 1
  MAXIMUM_NUMBER_OF_LETTERS = 12
  VALID_CHARACTERS = ("a".."z").to_a

  def to_s
    number_of_letters = (MINIMUM_NUMBER_OF_LETTERS..MAXIMUM_NUMBER_OF_LETTERS).to_a.sample

    number_of_letters.times.map { VALID_CHARACTERS.sample }.join
  end
end

number_of_words = 10
fake_text_generator = FakeTextGenerator.new(number_of_words)
fake_text_generator.generate
puts fake_text_generator.render



