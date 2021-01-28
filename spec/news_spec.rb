# ./spec/news_spec.rb
require './lib/news'

describe News do
  context '#random_news' do
    it 'Create news' do
      news = News.new.random_news
      expect(news).to eq news
    end
  end

  context '#empty_board' do
    it 'Not create news' do
      news = News.new
      expect(news).to_not eq News.new.random_news
    end
  end
end
