# Modelización Psicométrica con IRT

Aquí podrás encontrar todo el material del taller.
***

Para instalar todos los paquetes que usaremos a lo largo del taller, copien y luego corran la siguiente serie de comandos en la consola de RStudio:

```
# Función para instalar paquetes y cargarlos
ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if(length(new.pkg)) install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

# Paquetes con los cuales usar la función
paquetes <- c("tidyverse", "psych", "TAM", "ltm", "psychometric", "foreign", "statisticalModeling", 
              "plotly", "ggthemes", "markdown", "rmarkdown", "shiny", "learnr", "QuantPsyc", "datasauRus", "caret")

# Uso de la función
ipak(paquetes)
```



### Links útiles

**R**
* Descargar R: https://cran.r-project.org
* Descargar RStudio: https://www.rstudio.com/products/rstudio/download/
* Extensión para descargar archivos individuales de Github (sólo funciona en Google Chrome):
https://chrome.google.com/webstore/detail/octo-mate/baggcehellihkglakjnmnhpnjmkbmpkf
* R para principiantes: https://cran.r-project.org/doc/contrib/rdebuts_es.pdf

**Bases de Datos**
* TIMSS: http://www.timss.org/
* PIRLS: http://www.pirls.org/
* ICCS: http://iccs.acer.edu.au/
* SIRE: http://www.inee.edu.mx/index.php/sire
* IEA: http://www.iea.nl/data
* PISA (2015): http://pisadataexplorer.oecd.org/ide/idepisa/
* Journal Large-scale Assessments in Education: http://www.largescaleassessmentsineducation.com

**Software para análisis**
* IDB (SPSS): http://www.iea.nl/data
* `intsvy` (R): http://oucea.education.ox.ac.uk/research/recent-research-projects/r-package/

**IRT**
* Resumen con lista de recursos interesantes: https://www.mailman.columbia.edu/research/population-health-methods/item-response-theory
* Aplicaciones Web hechas con R (Shiny):
    - http://kylehamilton.net/shiny/IRTShiny/
    - https://shiny.cs.cas.cz/ShinyItemAnalysis/


### Información complementaria
* ¿Por qué es importante aprender a programar? https://www.nature.com/naturejobs/2017/170126/pdf/nj7638-563a.pdf
* ¿Por qué es importante aprender a programar en R? 
https://www.nature.com/polopoly_fs/1.16609!/menu/main/topColumns/topLeftColumn/pdf/517109a.pdf

### Bibliografía básica

- Baker, F. B., & Kim, S. H. (2017). *The Basics of Item Response Theory Using R*.
- Martínez Arias, M. R., Hernández-Lloreda, M. J., & Hernández-Lloreda, M. V. (2006). *Psicometría*. Madrid: Alianza Editorial.
- Matloff, N. (2011). *The art of R programming: A tour of statistical software design*. No Starch Press.

**Contacto:**

Ramsés: rvazquez@inee.edu.mx; Josué: rjmdzar@gmail.com
