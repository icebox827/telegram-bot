# rubocop:disable Layout/LineLength

require_relative './utils'

class Motivation
  include PickOne
  attr_reader :motivation_quotes

  def initialize
    @motivation_quotes = ['Do not be pushed around by the fears in your mind. Be led by the dreams in your heart. ― Roy T. Bennett',
                          'It is not the load that breaks you down, it is the way you carry it. ― Lou Holtz',
                          "Do you want to know who you are? Don't ask. Act! Action will delineate and define you. ― Thomas Jefferson",
                          'Nothing in the world is ever completely wrong. Even a stopped clock is right twice a day. ― Paulo Coelho',
                          'Of course motivation is not permanent. But then, neither is bathing; but it is something you should do on a regular basis. ― Zig Ziglar',
                          'The way to get started is to quit talking and begin doing. ― Walt Disney',
                          "When someone tells me 'no,' it doesn't mean I can't do it, it simply means I can't do it with them. ― Karen E. Quinones Miller",
                          "Get going. Move forward. Aim High. Plan a takeoff. Don't just sit on the runway and hope someone will come along and push the airplane. It simply won't happen. Change your attitude and gain some altitude. Believe me, you'll love it up here. ― Donald Trump",
                          'The individual who says it is not possible should move out of the way of those doing it. ― Tricia Cunningham',
                          'And will you succeed? Yes indeed, yes indeed! Ninety-eight and three-quarters percent guaranteed! ― Dr. Suess',
                          'When defeat comes, accept it as a signal that your plans are not sound, rebuild those plans, and set sail once more toward your coveted goal. ― Napoleon Hill',
                          'All great achievements require time. ― Maya Angelou',
                          'It is not a daily increase, but a daily decrease. Hack away at the inessentials. ― Bruce Lee',
                          'All men want, not something to do with, but something to do, or rather something to be. ― Henry David Thoreau',
                          "You can't build a reputation on what you are going to do. ― Henry Ford"]
  end

  def random_motivation
    PickOne.rand_string(@motivation_quotes)
  end
end

# rubocop:enable Layout/LineLength
