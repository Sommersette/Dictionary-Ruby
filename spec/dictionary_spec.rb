require('dictionary')
require('rspec')
require('pry')

describe(Word) do
  before() do
    Word.clear()
  end

  describe("#word") do
    it("will initialize a new word") do
    test_word = Word.new({:word => 'petrichor'})
      expect(test_word.word()).to(eq("petrichor"))
    end
  end

  describe("#save") do
    it("adds a word to an array of words") do
      test_word = Word.new({:word => 'petrichor'})
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("removes all entries out of the dictionary") do
      test_word = Word.new({:word => 'petrichor'})
      test_word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of the word') do
      test_word = Word.new({:word => 'petrichor'})
      expect(test_word.id()).to(eq(1))
    end
  end

describe(".find") do
  it("returns a word it's by id") do
    test_word = Word.new({:word => 'Petrichor'})
    test_word.save()
    expect(Word.find(test_word.id())).to(eq(test_word))
    test_word2 = Word.new({:word => 'Anosmia'})
    test_word2.save()
    expect(Word.find(test_word2.id())).to(eq(test_word2))
    end
  end


  describe("#new_definition") do
    it("allows a new definition to be added to a word") do
      test_word = Word.new ({:word => 'petrichor'})
      test_definition = Definition.new({:definition => 'The scent of rain on the earth after a prolonged dry spell.'})
      test_word.new_definition(test_definition)
      expect(test_word.definition()).to(eq([test_definition]))
    end
  end

end
#  ### definition ### #

describe(Definition) do

  describe("#definition") do
    it("will add a new definition") do
    test_definition = Definition.new({:definition => 'The scent of rain on the earth after a prolonged dry spell.'})
      expect(test_definition.definition()).to(eq('The scent of rain on the earth after a prolonged dry spell.'))
    end
  end

describe(".all") do
  it("returns all definition in the array") do
    expect(Definition.all()).to(eq([]))
  end
end

  describe("#id") do
    it("returns the id for a definition")do
      test_definition = Definition.new({:definition => 'The scent of rain on the earth after a prolonged dry spell.'})
      expect(test_definition.id()).to(eq(1))
    end
  end



  describe("#save") do
    it("saves a definition when added to a word") do
      test_definition = Definition.new({:definition => 'The scent of rain on the earth after a prolonged dry spell.'})
      test_definition.save()
      expect(Definition.all()).to(eq(['The scent of rain on the earth after a prolonged dry spell.']))
    end
  end

end
