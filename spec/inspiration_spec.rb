# ./spec/inspiration_spec.rb
require './lib/inspiration'

describe Inspiration do
  context '#random_quotes' do
    it 'Display random quotes' do
      news = News.new.random_news
      expect(news).to eq news
    end
  end

  context '#random_quotes' do
    it 'Not display random quotes' do
      news = News.new
      expect(news).to_not eq News.new.random_news
    end
  end
end
