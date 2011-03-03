Refinery::Application.routes.draw do
  resources :staff_members, :only => [:index,:show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :staff_members, :except => :show
  end
end

