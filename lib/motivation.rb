class Motivation
  def initialize; end

  def random_motivation
    MotivationalQuotes::Generate.random
  end
end
