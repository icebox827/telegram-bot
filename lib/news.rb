require_relative './utils'

class News
  include PickOne
  attr_reader :news_links

  def initialize
    @news_links = ['https://edition.cnn.com/world',
                   'https://www.bbc.com/news/world',
                   'https://www.aljazeera.com/news/',
                   'https://listindiario.com/las-mundiales',
                   'https://www.euronews.com/news/international']
  end

  def random_news
    PickOne.rand_string(@news_links)
  end
end
