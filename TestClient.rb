require 'msgpack-rpc'

# localhost:5000 に接続
cli = MessagePack::RPC::Client.new("localhost", 20001)

# 5秒でタイムアウトさせる
cli.timeout = 5


# helloメソッドを呼び出して応答を待つ
puts cli.call(:hello)
