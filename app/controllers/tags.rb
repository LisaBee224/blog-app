get '/tags/:id' do
  @tag = Tag.find(params[:id])
  @entries = @tag.entries
  erb :'entries/show'
end
