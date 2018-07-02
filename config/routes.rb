Rails.application.routes.draw do
  
  root 'posts#index'
  #get 'posts/index'

  #1. Create
  get 'posts/new'
  post 'posts' => 'posts#create'

  #2. Show
  get 'posts/show/:id' => 'posts#show'

  #3. Update

  get 'posts/edit/:id' => 'posts#edit'
  put 'posts/:id' => 'posts#update'

  #4. Destroy
  delete 'posts/:id' => 'posts#destroy'
  
  get 'posts/:id/write_reply' => 'posts#write_reply'
  
  get 'users/mypage'

  
  get 'users/index'

  #1. Create
  get 'users/new'
  post 'users' => 'users#create'
  
  #2. Read
  get 'users/login'
  post 'users/login' => 'users#login_chk'
  
  get 'users/show'

  

  get 'users/edit'

  get 'users/update'

  #4. Destroy
  delete 'users' => 'users#logout'


end
