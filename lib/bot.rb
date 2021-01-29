# rubocop:disable Layout/LineLength

# files
require_relative 'news'
require_relative 'motivation'
require_relative 'inspiration'
# dependencies
require 'telegram/bot'
require 'motivational_quotes'
require 'dotenv'

Dotenv.load

class NewsBot
  attr_reader :text

  token = '1679520179:AAF3M2uEOFIB-j6sEc4A0vmpBdYuTqF0BFE'

  Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
      case message.text
      when '/start'
        bot.api.send_message(chat_id: message.chat.id, text: 'Welcome to Telegram-News-Bot')
      when '/news'
        news = News.new
        bot.api.send_message(chat_id: message.chat.id, text: news.random_news)
      when '/motivation'
        motivation = Motivation.new
        bot.api.send_message(chat_id: message.chat.id, text: motivation.random_motivation)
      when '/inspiration'
        inspiration = Inspiration.new
        bot.api.send_message(chat_id: message.chat.id, text: inspiration.random_quotes)
      when '/stop'
        bot.api.send_message(chat_id: message.chat.id, text: 'Bye! See you again.')
      else
        bot.api.send_message(chat_id: message.chat.id, text: 'Invalid input, , Please enter /start /stop /news /motivation or /inspiration')
      end
    end
  end
end

# rubocop:enable Layout/LineLength
