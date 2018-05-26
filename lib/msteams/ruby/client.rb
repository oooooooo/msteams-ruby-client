module Msteams
  module Ruby
    class Client
      def initialize(webhook_url = '')
        @webhook_url = webhook_url || ENV['MSTEAMS_RUBY_CLIENT_WEBHOOK_URL']
      end

      def post(text)
        uri = URI.parse(@webhook_url)

        request = Net::HTTP::Post.new(uri.request_uri)
        request['Content-Type'] = 'application/json'
        request.body = { text: text }.to_json

        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        http.start { |h| h.request(request) }
      end
    end
  end
end
