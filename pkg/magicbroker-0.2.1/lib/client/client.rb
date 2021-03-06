require 'net/http'
require 'uri'

module Magicbroker

  class Client
      
      attr_accessor :server
      
      def initialize (server, clientID, topic)
        @server = server
        @clientID = clientID
        @topic = topic
      end
     
      def subscribe ()
        servlet = 'http://'+@server+'/subscribe?clientID='+@clientID+'&topic='+@topic
        Net::HTTP.get URI.parse(servlet)
      end
      
      def unsubscribe ()
        servlet = 'http://'+@server+'/unsubscribe?clientID='+@clientID+'&topic='+@topic
        Net::HTTP.get URI.parse(servlet)       
      end
            
      def send_events(hash)
        print
        servlet = 'http://'+@server+'/event?clientID='+@clientID+'&topic='+@topic+'&_method=POST&'+hash.to_query
        Net::HTTP.get_print URI.parse(servlet)
        print servlet
      end

      def receive_events(t)
	t.nil? ? t=1 : t=t	
	print
	servlet = 'http://'+@server+'/event?clientID='+@clientID+'&topic='+@topic+'&timeOut='+t.to_s()
        Net::HTTP.get_print URI.parse(servlet)
        print servlet
      end

  end
end
