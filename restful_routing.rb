               Prefix Verb   URI Pattern                            Controller#Action
 relationships_create GET    /relationships/create(.:format)        relationships#create
relationships_destroy GET    /relationships/destroy(.:format)       relationships#destroy
                 root GET    /                                      home#index
           user_posts GET    /users/:user_id/posts(.:format)        posts#index
                      POST   /users/:user_id/posts(.:format)        posts#create
        new_user_post GET    /users/:user_id/posts/new(.:format)    posts#new
            edit_post GET    /posts/:id/edit(.:format)              posts#edit
                 post GET    /posts/:id(.:format)                   posts#show
                      PATCH  /posts/:id(.:format)                   posts#update
                      PUT    /posts/:id(.:format)                   posts#update
                      DELETE /posts/:id(.:format)                   posts#destroy
       following_user GET    /users/:id/following(.:format)         users#following
       followers_user GET    /users/:id/followers(.:format)         users#followers
                users GET    /users(.:format)                       users#index
                      POST   /users(.:format)                       users#create
             new_user GET    /users/new(.:format)                   users#new
            edit_user GET    /users/:id/edit(.:format)              users#edit
                 user GET    /users/:id(.:format)                   users#show
                      PATCH  /users/:id(.:format)                   users#update
                      PUT    /users/:id(.:format)                   users#update
                      DELETE /users/:id(.:format)                   users#destroy
        post_comments GET    /posts/:post_id/comments(.:format)     comments#index
                      POST   /posts/:post_id/comments(.:format)     comments#create
     new_post_comment GET    /posts/:post_id/comments/new(.:format) comments#new
         edit_comment GET    /comments/:id/edit(.:format)           comments#edit
              comment GET    /comments/:id(.:format)                comments#show
                      PATCH  /comments/:id(.:format)                comments#update
                      PUT    /comments/:id(.:format)                comments#update
                      DELETE /comments/:id(.:format)                comments#destroy
                posts GET    /posts(.:format)                       posts#index
                      POST   /posts(.:format)                       posts#create
             new_post GET    /posts/new(.:format)                   posts#new
                      GET    /posts/:id/edit(.:format)              posts#edit
                      GET    /posts/:id(.:format)                   posts#show
                      PATCH  /posts/:id(.:format)                   posts#update
                      PUT    /posts/:id(.:format)                   posts#update
                      DELETE /posts/:id(.:format)                   posts#destroy
             sessions GET    /sessions(.:format)                    sessions#index
                      POST   /sessions(.:format)                    sessions#create
          new_session GET    /sessions/new(.:format)                sessions#new
         edit_session GET    /sessions/:id/edit(.:format)           sessions#edit
              session GET    /sessions/:id(.:format)                sessions#show
                      PATCH  /sessions/:id(.:format)                sessions#update
                      PUT    /sessions/:id(.:format)                sessions#update
        relationships POST   /relationships(.:format)               relationships#create
         relationship DELETE /relationships/:id(.:format)           relationships#destroy
               logout DELETE /sessions(.:format)                    sessions#destroy
