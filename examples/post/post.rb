require 'msteams-ruby-client'

msteams = Msteams::Ruby::Client.new
msteams.post('hello')
