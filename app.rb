ENV["RACK_ENV"] ||= "development"

require "rubygems"
require "bundler/setup"
require "sinatra/base"
require "json"
require "pry"

class Server < Sinatra::Base
  set :static, true
  set :public_folder, proc { File.join(root, "public") }

  get "/" do
    [200, "I am the root route"]
  end
end

Server.run! if $PROGRAM_NAME == __FILE__
