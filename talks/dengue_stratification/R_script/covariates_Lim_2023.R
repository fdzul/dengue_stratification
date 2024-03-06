

# General  ####
DiagrammeR::grViz("digraph {
                  # graph definitions
                  
                  graph [layout = dot, rankdir = LR]
                  
                  # node definitions
                  node [shape = rectangle, style = filled, color = grey, nodesep = 1, 
                       fixedsize = true, 
                  width = 2.5] 
                  
                  # edge definition
                  edge [color = grey, arrowhead = normal, arrowtail = dot]
                  
                  ##### fuentes de información
                  
                  dataset [label = 'Bases de Datos',  fillcolor =  '#C51162', color = 'white', fontcolor = 'white']
                  
                  ##### datasets
                  ento [label = 'Vigilancia Entomológica',  fillcolor =  '#880E4F', color = 'white', fontcolor = 'white']
                  epi [label = 'Vigilancia Epidemiológica',  fillcolor =  '#880E4F', color = 'white', fontcolor = 'white']
                  clim [label = 'Datos Climáticos',  fillcolor =  '#880E4F', color = 'white', fontcolor = 'white']
                  demo [label = 'Datos Demográficos',  fillcolor =  '#880E4F', color = 'white', fontcolor = 'white']
                  socio [label = 'Datos Socioeconómicos',  fillcolor =  '#880E4F', color = 'white', fontcolor = 'white']
                  ecol [label = 'Datos Ecológicos',  fillcolor = '#880E4F', color = 'white', fontcolor = 'white']
                  env [label = 'Datos Ambientales',  fillcolor = '#880E4F', color = 'white', fontcolor = 'white', taillabel = 'tail']
                  spatio_temporal [label = 'Datos Spatio-Temporal',  fillcolor = '#880E4F', color = 'white', fontcolor = 'white']
                  
                  # 
                  # Analisis
                  pca [label = 'PCA',  fillcolor =  '#CFD8DC', color = 'white', fontcolor = 'black']
                  pca2 [label = 'PCA',  fillcolor =  '#CFD8DC', color = 'white', fontcolor = 'black']
                  
                  cluster [label = 'Cluster Análisis',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'white']
                  hotspots [label = 'Hotspots Análisis',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'white']
                  
                  # indices
                  
                  index_ento [label = 'Indicador Entomologico',  fillcolor =  '#880E4F', color = 'white', fontcolor = 'white']
                  index_epi [label = 'Indicador Epidemiológico',  fillcolor =  '#880E4F', color = 'white', fontcolor = 'white']
                  index_clim [label = 'Indicador Climático',  fillcolor =  '#880E4F', color = 'white', fontcolor = 'white']
                  index_demo [label = 'Indicador Demográfico',  fillcolor =  '#880E4F', color = 'white', fontcolor = 'white']
                  index_socio [label = 'Indicador Socioeconómico',  fillcolor =  '#880E4F', color = 'white', fontcolor = 'white']
                  index_ecol [label = 'Indicador Ecológico',  fillcolor =  '#880E4F', color = 'white', fontcolor = 'white']
                  index_env [label = 'Indicaor Ambientales',  fillcolor =  '#880E4F', color = 'white', fontcolor = 'white', taillabel = 'tail']
                  index_spatio_temporal [label = 'Indicador Spatio-Temporal',  fillcolor =  '#880E4F', color = 'white', fontcolor = 'white']
                  
                  index_compuesto [label = 'Indicador Compuesto',  fillcolor =  '#880E4F', color = 'white', fontcolor = 'white']

                  ##### define the relation
                  dataset -> {ento epi clim demo socio ecol env spatio_temporal} -> pca 
                  pca -> {index_ento index_epi index_clim index_demo index_socio index_ecol 
                  index_env index_spatio_temporal} -> {cluster hotspots, pca2}
                  pca2 -> index_compuesto
                  
                  ###
                  dal [label = 'Dalenius & Hodge',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'white']
                  hotspots2 [label = 'Hotspots Análisis',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'white']
                  pl [label = 'Power Law Análisis',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'white']
                  #ensamble [label = 'Emsamble',  fillcolor = '#2731B5', color = 'white', fontcolor = 'white']
                  
                  
                  index_compuesto -> {dal hotspots2 pl} 
                  
                  
}", heigh = "500px",
width = "800px")


#######
# General  ####
DiagrammeR::grViz("digraph {
                  # graph definitions
                  
                  graph [layout = dot, rankdir = LR]
                  
                  # node definitions
                  node [shape = rectangle, style = filled, color = grey, nodesep = 1, 
                       fixedsize = true, 
                  width = 2.5] 
                  
                  # edge definition
                  edge [color = grey, arrowhead = normal, arrowtail = dot]
                  
                  ##### fuentes de información
                  
                  dataset [label = 'Bases de Datos',  fillcolor =  '#DB4437', color = 'white', fontcolor = 'white']
                  
                  ##### datasets
                  ento [label = 'Vigilancia Entomológica',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'white']
                  epi [label = 'Vigilancia Epidemiológica',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'white']
                  clim [label = 'Datos Climáticos',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'white']
                  demo [label = 'Datos Demográficos',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'white']
                  socio [label = 'Datos Socioeconómicos',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'white']
                  ecol [label = 'Datos Ecológicos',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'white']
                  env [label = 'Datos Ambientales',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'white', taillabel = 'tail']
                  spatio_temporal [label = 'Datos Spatio-Temporal',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'white']
                  
                  # 
                  # Analisis
                  pca [label = 'PCA',  fillcolor =  '#BC4434', color = 'white', fontcolor = 'white']
                  pca2 [label = 'PCA',  fillcolor =  '#BC4434', color = 'white', fontcolor = 'white']
                  
                  cluster [label = 'Cluster Análisis',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'black']
                  hotspots [label = 'Hotspots Análisis',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'black']
                  
                  # indices
                  
                  index_ento [label = 'Indicador Entomologico',  fillcolor =  'DodgerBlue', color = 'white', fontcolor = 'white']
                  index_epi [label = 'Indicador Epidemiológico',  fillcolor =  'DodgerBlue', color = 'white', fontcolor = 'white']
                  index_clim [label = 'Indicador Climático',  fillcolor =  'DodgerBlue', color = 'white', fontcolor = 'white']
                  index_demo [label = 'Indicador Demográfico',  fillcolor =  'DodgerBlue', color = 'white', fontcolor = 'white']
                  index_socio [label = 'Indicador Socioeconómico',  fillcolor =  'DodgerBlue', color = 'white', fontcolor = 'white']
                  index_ecol [label = 'Indicador Ecológico',  fillcolor =  'DodgerBlue', color = 'white', fontcolor = 'white']
                  index_env [label = 'Indicaor Ambientales',  fillcolor =  'DodgerBlue', color = 'white', fontcolor = 'white', taillabel = 'tail']
                  index_spatio_temporal [label = 'Indicador Spatio-Temporal',  fillcolor =  'DodgerBlue', color = 'white', fontcolor = 'white']
                  
                  index_compuesto [label = 'Indicador Compuesto',  fillcolor =  'DodgerBlue', color = 'white', fontcolor = 'white']

                  ##### define the relation
                  dataset -> {ento epi clim demo socio ecol env spatio_temporal} -> pca 
                  pca -> {index_ento index_epi index_clim index_demo index_socio index_ecol 
                  index_env index_spatio_temporal} -> {cluster hotspots, pca2}
                  pca2 -> index_compuesto
                  
                  ###
                  dal [label = 'Dalenius & Hodge',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'black']
                  hotspots2 [label = 'Hotspots Análisis',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'black']
                  pl [label = 'Power Law Análisis',  fillcolor =  '#1B5E20', color = 'white', fontcolor = 'black']
                  #ensamble [label = 'Emsamble',  fillcolor = '#2731B5', color = 'white', fontcolor = 'white']
                  
                  
                  index_compuesto -> {dal hotspots2 pl} 
                  
                  
}", heigh = "500px", width = "700px")

