get '/surveys' do
  @surveys = Survey.all
  erb :'/surveys/index'
end

post '/surveys' do
  survey = Survey.new(creator_id: session[:user_id], title: params[:title])
  if survey.save
    redirect '/surveys/#{survey.id}'
  else
    redirect '/surveys'
  end
end