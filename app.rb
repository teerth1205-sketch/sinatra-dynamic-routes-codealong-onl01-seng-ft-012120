require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do 
    @name = params[:name]
    "Goodbye, #{@name}."
  end 
  
  get '/multiply/:num1/:num2' do 
  @num = params[:num1] 
  @nums = params[:num2]
  @numss = @num* @nums
  @numss
  end 
  # Code your final two routes here:

end