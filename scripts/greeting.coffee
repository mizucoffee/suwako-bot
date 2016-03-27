module.exports = (robot) ->

  robot.hear /(おはよう|おはよー|おはー|おっはー|おはよ|もーにん|ぐも|おはやう)/i, (msg) ->
    msg.send "おはようございます！あーうー"

  robot.hear /(こんにちは|こんちは)/i, (msg) ->
    msg.send "こんにちはー！あーうー"

  robot.hear /(こんばんは)/i, (msg) ->
    msg.send "こんばんはー！あーうー"

  robot.hear /(おやすみ|おやす|ぐな)/i, (msg) ->
    msg.send "おやすみないさーい！あーうー"
