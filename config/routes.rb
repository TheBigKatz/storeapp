Rails.application.routes.draw do
  get '/stuff' => 'products#displayitem'
end
