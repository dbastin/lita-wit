# lita-wit

[![Build Status](https://travis-ci.org/dbastin/lita-wit.png?branch=master)](https://travis-ci.org/dbastin/lita-wit)
[![Coverage Status](https://coveralls.io/repos/dbastin/lita-wit/badge.png)](https://coveralls.io/r/dbastin/lita-wit)

Receive structured intentions from unstructured sentences using a [Lita](https://www.lita.io) bot and [Wit](https://www.wit.ai).

## Installation

Add lita-wit to your Lita instance's Gemfile:

``` ruby
gem "lita-wit"
```

## Configuration

You'll need to add the wit.ai API server access token.

``` ruby
Lita.configure do |config|
  # config... config... config...

  # https://wit.ai/dbastin/Lita... Fork it!
  config.handlers.wit.server_access_token = '72XXMP6VAKG2SAPLTXVQS6H5PBLVQIJW'
end
```

## Usage

Rock it!

## Thanks Go To

[Tom Beynon](https://github.com/tombeynon) - Great handler for Cleverbot [lita-ai](https://github.com/tombeynon/lita-ai)

