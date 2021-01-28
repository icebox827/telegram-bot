# rubocop:disable Layout/LineLength

require_relative './utils'

class Inspiration
  include PickOne
  attr_reader :inspiration_quotes

  def initialize
    @inspiration_quotes = ['Without music, life would be a mistake. ― Friedrich Nietzsche',
                           'We accept the love we think we deserve. ― Stephen Chbosky',
                           'Live as if you were to die tomorrow. Learn as if you were to live forever. ― Mahatma Gandhi',
                           'It is never too late to be what you might have been. ― George Eliot',
                           'There is no greater agony than bearing an untold story inside you. ― Maya Angelou',
                           'Life is not about finding yourself. Life is about creating yourself. ― George Bernard Shaw',
                           'And, when you want something, all the universe conspires in helping you to achieve it. ― Paulo Coelho',
                           'Do what you can, with what you have, where you are. ― Theodore Roosevelt',
                           'To the well-organized mind, death is but the next great adventure. ― J.K. Rowling',
                           'Success is not final, failure is not fatal: it is the courage to continue that counts. ― Winston S. Churchill',
                           'Everything you can imagine is real. ― Pablo Picasso',
                           'Yesterday is history, tomorrow is a mystery, today is a gift of God, which is why we call it the present. ― Bill Keane',
                           'We are all in the gutter, but some of us are looking at the stars. ― Oscar Wilde',
                           'It is no use going back to yesterday, because I was a different person then. ― Lewis Carroll',
                           'A person is a person, no matter how small. ― Dr. Seuss']
  end

  def random_quotes
    Random.rand_string(@inspiration_quotes)
  end
end

# rubocop:enable Layout/LineLength
