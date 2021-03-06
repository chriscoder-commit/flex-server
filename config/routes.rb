Rails.application.routes.draw do
  scope '/api' do
    # Users:
    post '/sign-up', to: 'users#create'
    get '/profile/:id', to: 'users#show'
    put '/update-profile/:id', to: 'users#update'
    post '/sign-in', to: 'users#sign_in'
    get '/all-users', to: 'users#index' #added this in to test controller 6pm 7/2/21

    # Employees:
    get '/availabilities', to: 'employees#index'
    post '/new', to: 'employees#create'
    get '/availability/:id', to: 'employees#show'
    get '/employees', to: 'employees#index'
    delete '/employees/delete/:id', to: 'employees#destroy' #added in for delete tests to work 8pm 7/2/21
    put '/update-availability/:id', to: 'employees#update'

    # Bookings:
    get '/bookings/history', to: 'bookings#index'
    post '/bookings/new', to: 'bookings#create'
    get '/bookings/current/:id', to: 'bookings#show'
    get '/bookings/current', to: 'bookings#current'
    delete '/bookings/delete', to: 'bookings#destroy'
    
    # Addresses:
    post '/addresses', to: 'addresses#create'
    get '/addresses/:id', to: 'addresses#show'
    put '/update-address/:id', to: 'addresses#update'
    
    # Status:
    get '/status', to: 'status#index'

    # stripe routes:
    post '/charges/new', to: "charges#create"
    get '/charges/success', to: "charges#success"
    get '/charges/cancel', to: "charges#cancel"

    # Services: added these for testing the services controller
    post '/services/new', to: "services#create"
    get '/services/show/:id', to: "services#show"
  end
end
