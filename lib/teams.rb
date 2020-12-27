class Teams
  def initialize(webhook_url = nil)
    @webhook_url = webhook_url || ENV['TEAMS_WEBHOOK_URL'] || ENV['MSTEAMS_RUBY_CLIENT_WEBHOOK_URL']
  end

  def post(text, options = {})
    uri = URI.parse(@webhook_url)

    request = Net::HTTP::Post.new(uri.request_uri)
    request['Content-Type'] = 'application/json'
    request.body = {
      title: options[:title],
      text: options[:text2html] ? text2html(text) : text,
      themeColor: options[:themeColor],
      summary: options[:summary] || text
    }.to_json

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    http.start { |h| h.request(request) }
  end

  def text2html(text)
    html = text.clone
    URI::DEFAULT_PARSER.extract(text, %w[http https]).uniq.each do |url|
      html.gsub!(url, %(<a href="#{url}">#{url}</a>))
    end
    html.gsub!("\n", "<br>\n")
    html
  end
end
