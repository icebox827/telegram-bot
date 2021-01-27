require_relative './utils'

class News
  include Random
  attr_reader :news_links

  def initialize
    @news_links = ['https://haitireportzone.com/actualite/',
                   'https://lambinews.com/tous-nos-articles/',
                   'https://www.juno7.ht/dernieres-nouvelles/',
                   'https://rezonodwes.com/category/actualites/',
                   'https://www.haitilibre.com/cat-1-politique-1.html']
  end

  def random_news
    Random.rand_string(@news_links)
  end
end
