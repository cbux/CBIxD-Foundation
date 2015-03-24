Rails.application.routes.draw do
  
  get 'jobs_matrix/index'
  get 'jobs_matrix/jdp'

  get 'jdp/index'

  # You can have the root of your site routed with "root"
  root 'home#experiment-4'

  # Routes
  get 'account' => 'account#index'
  get 'apply' => 'apply#index'
  get 'jobs_matrix' => 'jobs_matrix#index'

  get 'jobs' => 'jobs#index'
  get 'jobs/job_collapse' => 'jobs#job_collapse'
  get 'jobs/jdp' => 'jobs#jdp'
  get 'jobs/job_emailed_jdp' => 'jobs#job_emailed_jdp'
  get 'jobs/job_saved_jdp' => 'jobs#job_saved_jdp'
  get 'jobs/expired_job' => 'jobs#expired_job'
  get 'jobs/mobile_filters' => 'jobs#mobile_filters'
  get 'jobs/companyprofile' => 'jobs#companyprofile'
  get 'jobs/find_jobs_landing' => 'jobs#find_jobs_landing'
  get 'jobs/find_jobs_searchstate' => 'jobs#find_jobs_searchstate'
  get 'jobs/find_jobs_jobtitles' => 'jobs#find_jobs_jobtitles'
  get 'jobs/find_jobs_company' => 'jobs#find_jobs_company'
  get 'jobs/find_jobs_category' => 'jobs#find_jobs_category'
  get 'jobs/find_jobs_accounting' => 'jobs#find_jobs_accounting'
  get 'jobs/find_jobs_accounting_state' => 'jobs#find_jobs_accounting_state'
  get 'jobs/find_jobs_accounting_alabama_city' => 'jobs#find_jobs_accounting_alabama_city'
  get 'jobs/find_jobs_alabama' => 'jobs#find_jobs_alabama'
  get 'recommendations' => 'recommendations#index'
  get 'recommendations/similarrecs' => 'recommendations#similarrecs'
  get 'recommendations/resumerecs' => 'recommendations#resumerecs'
  get 'recprefs' => 'recommendations#recprefs'
  get 'recprefs_addlocation' => 'recommendations#recprefs_addlocation'
  get 'recprefs_addskills' => 'recommendations#recprefs_addskills'
  get 'recprefs_addtitle' => 'recommendations#recprefs_addtitle'
  get 'resumes' => 'resumes#index'
  get 'resumes/post' => 'resumes#post'
  get 'resumes/preview' => 'resumes#resume_preview'
  get 'resumes/cover_letter' => 'resumes#cover_letter'
  get 'resumes/resume_selected' => 'resumes#resume_selected'
  get 'resumes/cover_letter_blank' => 'resumes#cover_letter_blank'
  get 'saved_jobs' => 'saved_jobs#index'
  get 'saved_searches' => 'saved_searches#index'
  get 'sink' => 'sink#index'
  get 'sign_in' => 'user#sign_in'
  get 'sign_up' => 'user#sign_up'
  get 'jobs/after_apply' => 'jobs#after_apply'
  get 'jobs/job_emailed' => 'jobs#job_emailed'
  get 'jobs/job_saved' => 'jobs#job_saved'
  get 'dashboard' => 'home#dashboard'
  
  get 'home-one' => 'home#experiment-1'
  get 'home-two' => 'home#experiment-2'
  get 'home-three' => 'home#experiment-3'
  get 'home-four' => 'home#experiment-4'

  get 'info' => 'info#index'

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
