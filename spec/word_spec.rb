require('word')
require('rspec')
require('pry')

describe(Word) do

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
end
