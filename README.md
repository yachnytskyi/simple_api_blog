Simple api blog (sab) created on Ruby on Rails and RSpec ( for testing )  
Thanks for viewing the sab, it was created for learning and practice. Sab - a simple pet project with RSpec

Build Status

Sab version 1.1

INSTALLATION

Please make sure the release file is unpacked under a Web-accessible directory. You shall see the following files and directories:

app/  
bin/  
config/  
db/  
lib/tasks  
log/  
public/ 
spec/
storage/  
tmp/  
vendor/  
.gitignore  
.rspec
.ruby-version  
Gemfile  
Gemfile.lock  
GuardFile  
README.md  
Rakefile  
config.ru  

REQUIREMENTS

The minimum requirement by SAB is that your Web server supports Ruby 2.5 or above, and Rails 5.1 or above. The sab has been tested with the embedded Rails HTTP server in Ubuntu. Please access the following URL to check if your Web server reaches the requirements by SAB:

http://localhost:3000

The basic CRUD interface to SBA.

You can:  
get all posts to /categories:id/products (GET format),  
show one post to /categories:id/posts/:id(.:format GET),  
create post to /categories:id/products(.:format POST),  
update post to /categories:id/products/:id(.:format Patch or Put),  
delete post to /categories:id/posts/:id(.:format Delete)  
  
get all categories to /categories (GET format),  
show one category to /categories:id(.:format GET), 
create category to /categories(.:format POST),       
update category to /categories:id(.:format Patch or Put),  
delete category to /categories:id(.:format Delete)  

Prefix Verb URI Pattern Controller#Action  

posts GET /categories:id/posts(.:format) /categories:id/posts#index                                                                            /categories:id/posts#index

POST /categories:id/posts(.:format)  /categories:id/posts#create
/categories:id/post   v1/products#show

  PATCH  /v1/products/:id(.:format)        v1/products#update

  PUT    /v1/products/:id(.:format)                            v1/products#update

  DELETE /v1/products/:id(.:format)      v1/products#destroy


QUICK START

The SAB starts from its root folder. When you first start, enter "bundle install" (all necessary gems will be installed). The server is started by the rails s command (or rails server)

Kostyantyn Yachnytskyi yachnytskyi1992@gmail.com
