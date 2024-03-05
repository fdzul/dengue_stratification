
DiagrammeR::grViz("digraph {
                  # graph definitions
  graph [layout = dot, rankdir = TB]
  
  # node definitions
  node [shape = rectangle, style = filled, color = grey, 
  nodesep = 1, 
  fixedsize = false, 
  width = 1.7] 
  
  # edge definition
  edge [color = grey, arrowhead = normal, arrowtail = dot]
  
  ##### fuentes de información
  
  inf [label = 'Bases de Datos',  fillcolor =  '#DB4437', color = 'white', fontcolor = 'white']
  
  
  ##### datasets
  
  ento [label = 'Vigilancia Entomológica',  fillcolor =  '#0F9D58', color = 'white', fontcolor = 'white']
  epi [label = 'Vigilancia Epidemiológica',  fillcolor =  ' #0F9D58', color = 'white', fontcolor = 'white']
  clim [label = 'Datos Climáticos',  fillcolor =  ' #0F9D58', color = 'white', fontcolor = 'white']
  socio [label = 'Datos Sociodemográficos',  fillcolor =  ' #0F9D58', color = 'white', fontcolor = 'white']
  land [label = 'Cobertura Terrestre',  fillcolor =  ' #0F9D58', color = 'white', fontcolor = 'white']
  mov [label = 'Datos de Movilidad',  fillcolor =  ' #0F9D58', color = 'white', fontcolor = 'white']
 
 ### 
 ana [label = 'Estadística Multivariada',  fillcolor =  'orange', color = 'white', fontcolor = 'black']
 
 ### 
 indice [label = 'Indice de Riesgo',  fillcolor =  'DodgerBlue', color = 'white', fontcolor = 'white']
 
 ###
 hotspots [label = 'Hotspots',  fillcolor =  '#E01E5A', color = 'white', fontcolor = 'white']
 
 ##### define the relation
 
 inf -> {ento, epi, clim, socio, land, mov} -> ana -> indice -> hotspots
 
 
}", heigh = "500px", width = "800px")
