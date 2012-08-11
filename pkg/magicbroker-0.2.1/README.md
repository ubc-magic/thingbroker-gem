
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


## Using the gem where it should be used: in a Rails application

For ease you can declare a global broker entity, in /apps/controllers/application_controller.rb: 

```
require 'magicbroker'
def magicbroker
   @magicbroker = Magicbroker::Client.new("localhost:8800/osgibroker", "clientID", "topic")
end
```

Then you can use your global object. For example, sending events:

```
magicbroker.subscribe()
hash = {:key1 => "value1", :key2 => "value2", :key3 => "value3"}
magicbroker.send_events(hash)
```

Unsubscribing:

```
magicbroker.unsubscribe()
```

Querying events (default timeout of 1 second). You can delegate this task to a Resque worker running in the background:

```
magicbroker.receive_events(nil)
```

### Using without a global object (many broker objects)

You can initialize a new magicbroker object, subscribe, receive events and send a key/value pair event:

```
require 'magicbroker'
myentity = Magicbroker::Client.new("localhost:8800/osgibroker", "clientID", "topic")
myentity.subscribe()
myentity.receive_events(20) #define a timeout of 20 seconds
myhash = {:key => "value"}
myentity.send_events(myhash)
```

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

