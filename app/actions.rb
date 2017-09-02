get '/' do
  @posts = Post.order(created_at: :desc)
  erb(:index)
end

get '/signup' do        #if a user navigates to  the path "signup",
    @user = User.new    #setup empty @user object
    erb(:signup)        #render "app/views/signup.erb"
end

post 'post' do
  "Form submitted!"
end

post '/signup' do
  "Form submitted!"
end

post '/signup' do
  params.to_s
end