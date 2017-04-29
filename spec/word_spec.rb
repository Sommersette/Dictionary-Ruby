require('word')
require('rspec')
require('pry')

describe(Word) do
  before() do
    Word.clear()
  end

  describe("#word")do
    it("will initialize a new word") do
    test_word = Word.new({:word => 'petrichor', :definition => 'the scent of rain on the earth after a prolonged dry spell.'})
      expect(test_word.word()).to(eq("petrichor"))
    end
  end

  describe("save") do
    it("adds a word to an array of words") do
      test_word = Word.new({:word => 'petrichor', :definition => 'the scent of rain on the earth after a prolonged dry spell.'})
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
      Word.new({:word => 'petrichor', :definition => 'the scent of rain on the earth after a prolonged dry spell.'})
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns word id') do
      test_word = Word.new({:word => 'petrichor', :definition => 'the scent of rain on the earth after a prolonged dry spell.'})
      test_word.save()
      expect(test_word.id()).to(eq(1))
    end
  end

  describe(".find") do
    it('returns word by id') do
      test_word = Word.new({:word => 'petrichor', :definition => 'the scent of rain on the earth after a prolonged dry spell.'})
      test_word.save()
      test_word2 = Word.new({:word => 'anosmia', :definition => 'a person which is unable to detect smells'})
      test.word2.save()
      expect(Word.find(test_word2.id())).to(eq(test_word))
    end
  end

end
