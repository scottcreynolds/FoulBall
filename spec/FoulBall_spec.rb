require "spec_helper"

RSpec.describe FoulBall do
  it "has a version number" do
    expect(FoulBall::VERSION).not_to be nil
  end

  context 'configuration' do
    after(:example) do
      FoulBall.reset
    end

    it 'can take a new word list' do
      badword = "whoopsie"
      expect(FoulBall.fair?(badword)).to be true
      FoulBall.configure do |f|
        f.foul_words = [badword]
      end
      expect(FoulBall.fair?(badword)).to be false
    end

    it 'can additively take new words' do
      new_word = "whoopsie"
      bad_word = "fuck"
      expect(FoulBall.fair?(bad_word)).to be false
      expect(FoulBall.fair?(new_word)).to be true
      FoulBall.configure do |f|
        f.foul_words << new_word
      end
      expect(FoulBall.fair?(bad_word)).to be false
      expect(FoulBall.fair?(new_word)).to be false
    end

  end
end
