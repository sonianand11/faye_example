#command to run rackup faye.ru -s thin -E production
require 'faye'
Faye::WebSocket.load_adapter('thin')
faye_server = Faye::RackAdapter.new(:mount => "/faye",:timeout => 45)
run faye_server
