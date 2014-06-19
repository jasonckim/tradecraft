Rails.application.routes.draw do
  
  devise_for :users

  resources :skills
end

#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                   skills GET    /skills(.:format)              skills#index
#                          POST   /skills(.:format)              skills#create
#                new_skill GET    /skills/new(.:format)          skills#new
#               edit_skill GET    /skills/:id/edit(.:format)     skills#edit
#                    skill GET    /skills/:id(.:format)          skills#show
#                          PATCH  /skills/:id(.:format)          skills#update
#                          PUT    /skills/:id(.:format)          skills#update
#                          DELETE /skills/:id(.:format)          skills#destroy