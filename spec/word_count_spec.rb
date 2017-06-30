require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('rspec')
require('word_count')

describe('String#word_count') do
  it "returns 0 for sentences without any specific word to search for" do
    expect("i am a potato".count("")).to(eq(0))
  end

  it "takes a sentence and splits it into an array" do
    expect("i am a potato".split).to(eq(["i", "am", "a", "potato"]))
  end
end
