require 'msteams-ruby-client'

teams = Teams.new
teams.post('hello<br>world')
