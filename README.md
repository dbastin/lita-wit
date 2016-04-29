# lita-wit

[![Build Status](https://travis-ci.org/dbastin/lita-wit.png?branch=master)](https://travis-ci.org/dbastin/lita-wit)
[![Coverage Status](https://coveralls.io/repos/dbastin/lita-wit/badge.png)](https://coveralls.io/r/dbastin/lita-wit)

This is a [Lita](https://www.lita.io) handler to converse with [Wit.ai](https://www.wit.ai)

Using Lita and Wit.ai, you can easily create text or voice based bots that humans can chat with on their preferred messaging platform.

Something like this little Slack snippet...

![Example of a conversation with Lita](https://raw.github.com/dbastin/lita-wit/master/example.png)

The above snippet is a conversation with a Lita bot configured with a Slack adapter and this lita-wit handler.
This lita-wit handler is conversing with a publically accessible pre-configured Wit.ai chatbot - https://wit.ai/dbastin/Lita.

Once you get it up and running, you'll see that Wit.ai not only enables your robot to understand humans, it also helps you discover their unforeseen needs. It's all very clever.

## Installation

Add lita-wit to your Lita instance's Gemfile:

``` ruby
gem "lita-wit"
```

## Configuration

You'll need to add the Wit.ai API server access token. Please sign up and fork the pre-configured Wit.ai bot.

``` ruby
Lita.configure do |config|
  # config... config... config...

  # https://wit.ai/dbastin/Lita... Fork it!
  config.handlers.wit.server_access_token = '72XXMP6VAKG2SAPLTXVQS6H5PBLVQIJW'
end
```

## Usage

Just send a message mentioning your robot by it's name or alias, either directly as a command or anywhere else in the message.

```
> Lita, is it raining in Istanbul?
#=> Sorry, I don't know what the weather is like in Istanbul. I'm just a simple chatbot who loves a chat.

> Ok. Tell me if it is snowing lita.
#=> Where exactly?
```

Your robot's name will be stripped from the message we send to Wit.ai

## Thanks

[Tom Beynon](https://github.com/tombeynon) - Great handler for Cleverbot [lita-ai](https://github.com/tombeynon/lita-ai)

## License

[MIT](http://opensource.org/licenses/MIT)