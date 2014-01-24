# Slim tempates
# require "slim" 
# Slim::Engine.set_default_options pretty: true

# Tumblargh
require 'tumblargh'
activate :tumblargh,
  api_key: 'i41pISnf18m39MT1kMQLsRPC8mU7XcOem6eYALzkLcCoKgTtgm', # This is your OAuth consumer key
  blog: 'kunsttag.tumblr.com.json'

page "/channel.html", layout: false

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Fonts are on cyon cerver
  set :images_dir, '//44ft.com/kunsttag_assets/'
  set :css_dir, '//44ft.com/kunsttag_assets/'
  set :js_dir, '//44ft.com/kunsttag_assets/'
  
  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_path, "/Content/images/"
end
