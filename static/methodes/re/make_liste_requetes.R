
# setup

library(requetr)

listes_re <- requetr::get_all_listes('Recours Exceptionnel')
jsonlite::write_json(listes_re, 'tools1/listes_re.json', pretty = TRUE)

make_tools <- function (theme, def_url = "http://164.1.196.52:8000/") 
{
  l <- get_dictionnaire() %>% filter(thematique == theme) %>% 
    .$nom_abrege
  lapply(l, function(x)creer_json(get_liste(x), paste0('tools/', x, '.json')))
}

library(dplyr, warn.conflicts = F)
make_tools('Recours Exceptionnel')
