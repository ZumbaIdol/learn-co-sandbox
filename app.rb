class Application < Sinatra::Base
 
  get '/' do
    "Hello, World!"
  end
  
  configure do
  enable :sessions
  set :session_secret, "secret"
end

get '/hey' do 
  session["name"] = "Victoria"
  @session = session
end
 
end