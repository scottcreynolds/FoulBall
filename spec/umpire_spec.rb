require "spec_helper"

RSpec.describe FoulBall do

  it '#fair? tells us if a string is fair' do
    expect(FoulBall.fair?("oh yeah this is great")).to be true
    expect(FoulBall.fair?("oh fuck no this is bad")).to be false
  end

  it '#fair? matches on partial word' do
    expect(FoulBall.fair?("fucking hell")).to be false
  end

end