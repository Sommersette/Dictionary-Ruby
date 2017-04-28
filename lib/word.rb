class Word
  attr_accessor(:word, :definition, :id)
end

# @@Word = []

# define_method(:initialize) do |attributes|
#   word = attributes.fetch(:word)
#   definition= attributes.fetch(:definition, :id)
#   id = @@Word.length().+(1)
# end

define_method(:save) do
  @@word.push(self)
end
