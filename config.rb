activate :directory_indexes
set :index_file, 'index.html'

activate :sprockets do |c|
  c.supported_output_extensions.clear # To use sass-helper. What happend...? https://github.com/middleman/middleman-sprockets/issues/127#issuecomment-736958140
end

set :css_dir,    'css'
set :js_dir,     'js'
set :images_dir, 'images'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end
