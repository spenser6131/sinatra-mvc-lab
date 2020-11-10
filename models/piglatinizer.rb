class PigLatinizer

  def piglatinize(user_input)
    split_sentence = user_input.split(" ")
    unjoined_pigged_words = split_sentence.map { |word| piglatinize_word(word)}
    piglatinized_sentence = unjoined_pigged_words.join(" ")
    piglatinized_sentence
  end


  def piglatinize_word(word)
    if word[0].match(/[aAeEiIoOuU]/)
      word << "way"
    else
      index_of_vowel = word.index(/[aAeEiIoOuU]/)
      consonants_chunk = word.slice(0..index_of_vowel-1)
      untouched_chunk = word.slice(index_of_vowel..word.length)
      untouched_chunk + consonants_chunk + "ay"
    end
  end
end