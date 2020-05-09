activate :directory_indexes
set :index_file, 'index.html'

activate :sprockets

set :css_dir,    'css'
set :js_dir,     'js'
set :images_dir, 'images'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end
