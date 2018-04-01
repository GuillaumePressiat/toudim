library(blogdown)

# getwd()
new_site('')
install_theme('calintat/minimal')

serve_site()
build_site()
blogdown::hugo_build()
zip( 'public.zip', files = 'public')
