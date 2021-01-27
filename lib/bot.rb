require 'telegram/bot'
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
      when '/haitireportzone'
        bot.api.send_message(chat_id: message.chat.id, text: 'Welcome to https://haitireportzone.com')
      end
    end
  end
end
