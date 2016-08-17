require 'sinatra'
require 'sinatra/activerecord'
require 'pry'

current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }


get '/' do
  erb :index
end

post '/articles' do
  # @article = Article.create(params[:article])
  article = Article.create({:title => params[:title], :content => params[:content], :published_on => DateTime.now})
  @articles = Article.all
  erb :articles
end

