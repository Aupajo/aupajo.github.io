set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

activate :deploy do |deploy|
  deploy.method = :git
  deploy.remote = 'git@github.com:Aupajo/aupajo.github.io.git'
end

configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash
end
