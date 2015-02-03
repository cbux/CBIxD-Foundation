Rails.application.routes.draw do
  # You can have the root of your site routed with "root"
  root 'home#index'

  # Routes
  get 'account' => 'account#index'
  get 'apply' => 'apply#index'
  get 'apply/apply_unknown' => 'apply#apply_unknown'
  get 'apply/parsed_unknown' => 'apply#parsed_unknown'
  get 'apply/signin_guest' => 'apply#signin_guest'
  get 'jobs' => 'jobs#index'
  get 'jobs/jdp_nonbranded' => 'jobs#jdp_nonbranded'
  get 'recommendations' => 'recommendations#index'
  get 'resumes' => 'resumes#index'
  get 'resumes/cover_letter' => 'resumes#cover_letter'
  get 'resumes/resume_selected' => 'resumes#resume_selected'
  get 'resumes/cover_letter_blank' => 'resumes#cover_letter_blank'
  get 'saved_jobs' => 'saved_jobs#index'
  get 'saved_searches' => 'saved_searches#index'
  get 'sink' => 'sink#index'
  get 'user' => 'user#index'
  get 'user/sign_up' => 'user#sign_up'
  get 'user/sign_out' => 'user#sign_out'
 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
