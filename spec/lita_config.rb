Lita.configure do |config|
  config.robot.name = 'Lita'
  config.robot.log_level = :info
  config.robot.adapter = :shell

  # https://wit.ai/dbastin/Lita... (fork it!)
  config.handlers.wit.server_access_token = '72XXMP6VAKG2SAPLTXVQS6H5PBLVQIJW'

  # default actions are in this class... (specify your own if you like)
  config.handlers.wit.actions_class = Lita::Actions::Weather
end
