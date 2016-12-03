require 'sinatra'
require 'sinatra/activerecord'
# require 'time'


current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }

get '/' do
  erb :home
end

get '/new' do
  erb :new
end

get '/article/:id' do
  @article = Article.find(params[:id])
  erb :show
end

post '/create' do
  @article = Article.new(params)
  if @article.save
    redirect '/articles'
  else
    "There was an error."
  end
end

get '/articles' do
  @articles = Article.all.order(created_at: :desc)
  erb :articles
end

post '/articles' do
  # @article = Article.create(params[:article])
  article = Article.create({:title => params[:title], :content => params[:content]})
  erb :articles
end

