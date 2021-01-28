# ./spec/motivation_spec.rb
require './lib/motivation'

describe Inspiration do
  context '#random_motivation' do
    it 'Display random motivation' do
      news = News.new.random_news
      expect(news).to eq news
    end
  end

  context '#random_motivation' do
    it 'Not display random qmotivation' do
      news = News.new
      expect(news).to_not eq News.new.random_news
    end
  end
end
