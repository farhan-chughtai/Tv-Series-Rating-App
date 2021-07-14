Rails.application.routes.draw do
  root :to => "tv_seasons#index"
  get '/tv_season/:id', to: 'tv_seasons#show', as: :tv_season
end
