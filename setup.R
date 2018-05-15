library(blogdown)

# getwd()
new_site('')
install_theme('calintat/minimal')

blogdown::hugo_build()
serve_site()
# build_site()

zip( 'public.zip', files = 'public')
