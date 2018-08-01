require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:greeter/:greetee" do
    @greeter = params[:greeter]
    @greetee = params[:greetee]
    "Hello #{@greetee}! My name is #{@greeter}."
  end

  get '/goodbye/:name' do
  @user_name = params[:name]
  "Goodbye, #{@user_name}."
  end
  
  get '/multiply/:num1/:num2' do
@num1 = params[:num1].to_i 
@num2 = params[:num2].to_i
@prouduct = @num1 * @num2
"#{@num1} * #{@num2} = #{@prouduct}"
 end
end
