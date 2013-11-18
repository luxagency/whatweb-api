require 'rubygems'
require 'sinatra'

get '/' do
  'Hello world!'
end

post '/whatweb' do
  if !params[:target].nil? && !params[:target].empty?
    whatweb_binary = File.join(File.expand_path('..', __FILE__), 'whatweb/whatweb')
    output = `#{whatweb_binary} #{params[:target]} --color=never`
    output.empty? ? "Unknown" : output
  end
end