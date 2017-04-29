class Word
  @@Word = []
  attr_accessor(:word, :definition, :id)



define_method(:initialize) do |attributes|
  @word = attributes.fetch(:word)
  @definition= attributes.fetch(:definition)
  @id = @@Word.length().+(1)
end

define_singleton_method(:all) do
  @@word
end

define_method(:save) do
  @@word.push(self)
end

define_singleton_method(:clear) do
  @@word = []
end

define_singleton_method(:find) do |indentification|
  matched_word = nil
  @@word.each() do |word|
    if word.id() == indentification.to_i
      matched_word = word
    end
  end
  matched_word
end

define_method(:definition) do |definition|
  @definition.push(definition)
  end
end
