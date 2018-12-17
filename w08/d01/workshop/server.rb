require 'googlebooks' # unless you're using Bundler
require 'sinatra'
require "sinatra/reloader"

register Sinatra::Reloader


# get '/:title' do
# print GoogleBooks.search("The Great Gatsby")

# end

# first_book.authors #=> 'F. Scott Fitzgerald'
# first_book.isbn #=> '9781443411080'
# first_book.image_link(:zoom => 6) #=> 'http://bks2.books.google.com/books?id=...'
get '/' do
  @books=[]
 erb :home
end

post '/' do 
 @books = GoogleBooks.search(params['quiry'])
#  @title = @books.first.title 
#  @author= @books.author
#  @img = @books.image_link
erb :home

end 