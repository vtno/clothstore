# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.precompile += %w( placehold_300x400.png )
Rails.application.config.assets.precompile += %w( product_img.jpeg )
Rails.application.config.assets.precompile += %w( body_bg.jpg )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( owl.js )
Rails.application.config.assets.precompile += %w( add_remove_button.js )