require 'sinatra'
require 'json'
require 'faraday'

# Simple Sinatra application for testing
class SampleApp < Sinatra::Base
  get '/' do
    {
      message: 'Welcome to Sample Ruby App!',
      status: 'running',
      gems_loaded: ['sinatra', 'json', 'faraday']
    }.to_json
  end

  get '/health' do
    { status: 'healthy' }.to_json
  end

  get '/api/fetch' do
    begin
      conn = Faraday.new(url: 'https://api.github.com')
      response = conn.get('/zen')
      {
        source: 'GitHub Zen',
        data: response.body
      }.to_json
    rescue StandardError => e
      status 500
      { error: e.message }.to_json
    end
  end

  run! if app_file == $0
end
