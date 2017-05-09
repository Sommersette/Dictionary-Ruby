class Word
  attr_accessor(:word, :definition, :id)

  @@Word = []

  #
  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @definition = []
    @id = @@Word.length().+(1)
  end

# ### word ### #

  #
  define_singleton_method(:all) do
    @@word
  end
  #
  define_method(:save) do
    @@word.push(self)
  end
  #
  define_singleton_method(:clear) do
    @@word = []
  end
  #
  define_singleton_method(:find) do |indentification|
    found_word = nil
    @@word.each() do |word|
      if word.id().eql?(indentification.to_i())
        found_word = word
      end
    end
    found_word
  end

  define_method(:new_definition) do |definition|
    @definition.push(definition)
  end

end

# ### Definition ### #

class Definition
  attr_accessor(:definition, :id)
  #
  @@total_definitions = []

#
  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition)
    @id = @@total_definitions.length.+(1)
    end

    define_singleton_method(:all) do
      @@total_definitions
    end



  define_method(:save) do
    @@total_definitions.push(@definition)
  end
end
