class WordSynth
  def play(original_words)
    ->(words) do
      words.chars.map{ |c| c == '' ? c : c * rare}
    end
  end
end