# Reload the browser automatically whenever files change
activate :livereload

# Slim tempates
# require "slim" 
# Slim::Engine.set_default_options pretty: true

# Tumblargh
require 'tumblargh'
activate :tumblargh,
  api_key: 'i41pISnf18m39MT1kMQLsRPC8mU7XcOem6eYALzkLcCoKgTtgm', # This is your OAuth consumer key
  blog: 'kunsttag.tumblr.com'

page "/channel.html", layout: false

I18n.enforce_available_locales = false

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'

# Build-specific configuration
configure :build do
  
  # Assets are on cyon server
  # set :images_dir, '//44ft.com/kunsttag_assets'
  # set :js_dir, '//44ft.com/kunsttag_assets'
  
  # Setting CSS dir does not work in build
  # set :css_dir, '//44ft.com/kunsttag_assets'
  
  # Or use a different asset path
  set :http_prefix, "//44ft.com/kunsttag_assets/"  
  
  # For example, change the Compass output style for deployment
  activate :minify_css
  
  # Minify Javascript on build
  activate :minify_javascript
  
  # Enable cache buster
  activate :asset_hash, exts: ['.js', '.css'], ignore: ['modernizr-2.6.2.min.js']
  
  # Or use a different asset path
  set :http_prefix, "//44ft.com/kunsttag_assets/"

end
