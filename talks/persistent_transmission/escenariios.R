

# Step 2. make the tible link ####
link <- tibble::tibble(CVE_ENT = c("31", "30", "23","20", 
                                   "04", "17", "14", "16", 
                                   "24", "07", "12", "27"),
                       link = c("https://keen-dango-d1cd7e.netlify.app/",
                                "https://zippy-bunny-bdd8c7.netlify.app/",
                                "https://helpful-pegasus-ba8bb9.netlify.app/",
                                "https://merry-figolla-08f5bf.netlify.app/",
                                
                                "https://phenomenal-hotteok-02e188.netlify.app/",
                                "https://glistening-griffin-b8023f.netlify.app/",
                                "https://heartfelt-fudge-936865.netlify.app/",
                                "https://fabulous-mermaid-31ea6a.netlify.app/",
                                
                                "https://wonderful-belekoy-db9c08.netlify.app/",
                                "https://adorable-tiramisu-303de1.netlify.app/",
                                "https://astounding-squirrel-94dd18.netlify.app/",
                                "https://capable-torrone-6eae7f.netlify.app/"))

# Step 2. left joint ####
mex <- dplyr::left_join(x = link,
                             y = rgeomex::AGEE_inegi19_mx,
                             by = "CVE_ENT") |>
    dplyr::mutate(Estado = paste0(": <a href=", 
                                  link,">", 
                                  NOMGEO, "</a>")) |>
    as.data.frame() |>
    sf::st_set_geometry(value = "geometry") 

save(mex,
     file = "talks/persistent_transmission/dashboard_escenarios_epidemiologicos.RData")



# Step 3.visualization ####
mapview::mapviewOptions(leafletWidth = 1600, 
                        leafletHeight = 900,
                        legend = FALSE)

mapview::mapview(mex,
                 popup = "Estado",
                 legend = FALSE)
