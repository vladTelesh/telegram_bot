
require 'telegram/bot'

TOKEN = '852854711:AAFvfV4aG0gDurpJsxoavg_NPQ-3gdJD_vs'

answers = [

    "Бесспорно",
    "Никаких сомнений",
    "Определённо да",
    "100% да",

    "Мне кажется - ДА",
    "Вероятнее всего",
    "Знаки говорят - да",

    "Пока не ясно, попробуй снова",
    "Даже не думай",
    "Мой ответ - нет",
    "Уверен, что нет",
]

Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")

    else bot.api.send_message(chat_id: message.chat.id,text: answers.sample )
    end

  end
end