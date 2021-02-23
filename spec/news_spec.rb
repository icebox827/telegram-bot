# ./spec/news_spec.rb
require './lib/news'

describe News do
  context '#random_news' do
    it 'Display random news' do
      news = News.new.random_news
      expect(news).to eq news
    end
  end

  context '#random_news' do
    it 'Not Display news' do
      news = News.new
      expect(news).to_not eq News.new.random_news
    end
  end
end
