module.exports = (robot) ->
  robot.hear /容量教えて/i, (msg) ->
      request = msg.http('https://slack.com/api/files.list?token=xoxp-15061475204-15063155493-30123303441-5ebdc13619')
      .get()
      request (err, res, body) ->
        json = JSON.parse body

        sum = 0
        for key, value of json['files']
          sum = sum + value['size']

        if sum >= 1000000000
          msg.send "Filesの容量は大体#{Math.round(sum / 1000000000 * 100) / 100 }GBくらいだよ！"
        else
          msg.send "Filesの容量は大体#{Math.round(sum / 1000000 * 100) / 100 }MBくらいだよ！"
