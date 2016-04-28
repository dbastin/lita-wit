Lita.configure do |config|
  config.robot.name = 'Lita'
  config.robot.log_level = :info
  config.robot.adapter = :shell

  # https://wit.ai/dbastin/Lita... Fork it!
  config.handlers.wit.server_access_token = '72XXMP6VAKG2SAPLTXVQS6H5PBLVQIJW'
end
