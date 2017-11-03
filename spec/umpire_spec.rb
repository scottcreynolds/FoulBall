require "spec_helper"

RSpec.describe FoulBall do

  context '#fair?' do
    it 'tells us if a string is fair' do
      expect(FoulBall.fair?("oh yeah this is great")).to be true
      expect(FoulBall.fair?("oh fuck no this is bad")).to be false
    end

    it 'matches on partial word' do
      expect(FoulBall.fair?("fucking hell")).to be false
    end

    it 'is case insensitive' do
      expect(FoulBall.fair?("FUCK")).to be false
    end
  end

  context '#foul' do
    it 'tells which words are bad' do
      expect(FoulBall.foul("fuck this shit")).to include("fuck", "shit")
    end
  end

end