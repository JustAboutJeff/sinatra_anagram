get '/' do
  @anagrams = []
  erb :index
end

post '/anagram' do
  @anagrams = Word.get_anagrams(params[:user_input])
  erb :index
end
