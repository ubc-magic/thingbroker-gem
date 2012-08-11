
Ruby gem for subscribing, unsubscribing and sending events to the Magic Broker 2.

## Getting Started:

This gem is already published on rubygems.org, so you can actually just include it in your application. 

### Step 1

If you're writting a Rails application, first add the following line to your Gemfile file:

```
gem 'magicbroker', '0.2.0'
```

### Step 2

Then you can include it in any controller like so:
```
require 'magicbroker'
```

### Other ways:

If you want to download the latest version of the gem, fork this repository and you can find the packaged gem in the /pkg directory.

## Installing from source

This gem was built using 'echoe', to install the gem in your system run:

```
rake manifest #To first test the file.
rake install #To install in your system.
``` 

## Publishing to RubyForge

ATTENTION: this is only for developers. You can publish the gem to rubygems.org by running the task:

```
rake release
```
