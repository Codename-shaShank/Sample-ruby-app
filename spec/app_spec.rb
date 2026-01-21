require_relative '../app'
require 'rack/test'

RSpec.describe SampleApp do
  include Rack::Test::Methods

  def app
    SampleApp
  end

  describe 'GET /' do
    it 'returns a welcome message' do
      get '/'
      expect(last_response).to be_ok
      data = JSON.parse(last_response.body)
      expect(data['message']).to eq('Welcome to Sample Ruby App!')
    end
  end

  describe 'GET /health' do
    it 'returns health status' do
      get '/health'
      expect(last_response).to be_ok
      data = JSON.parse(last_response.body)
      expect(data['status']).to eq('healthy')
    end
  end
end
