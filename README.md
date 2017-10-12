# Modelamiento Psicométrico con IRT

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
packages <- c("tidyverse", "psych", "TAM", "ltm", "psychometric", "foreign", "statisticalModeling", 
"plotly", "ggthemes", "markdown", "rmarkdown", "shiny", "learnr", "QuantPsyc", "datasauRus", "caret")

# Uso de la función
ipak(packages)
```



#### Links útiles

* Descargar R: https://cran.r-project.org
* Descargar RStudio: https://www.rstudio.com/products/rstudio/download/
* Extensión para descargar archivos individuales de Github (sólo funciona en Google Chrome):
https://chrome.google.com/webstore/detail/octo-mate/baggcehellihkglakjnmnhpnjmkbmpkf
* R para principiantes: https://cran.r-project.org/doc/contrib/rdebuts_es.pdf

#### Información complementaria
* ¿Por qué es importante aprender a programar? https://www.nature.com/naturejobs/2017/170126/pdf/nj7638-563a.pdf
* ¿Por qué es importante aprender a programar en R? 
https://www.nature.com/polopoly_fs/1.16609!/menu/main/topColumns/topLeftColumn/pdf/517109a.pdf

### Bibliografía básica

- Baker, F. B., & Kim, S. H. (2017). *The Basics of Item Response Theory Using R*.
- Martínez Arias, M. R., Hernández-Lloreda, M. J., & Hernández-Lloreda, M. V. (2006). *Psicometría*. Madrid: Alianza Editorial.
- Matloff, N. (2011). *The art of R programming: A tour of statistical software design*. No Starch Press.

**Contacto:**

Ramses: rvazquez@inee.edu.mx; Josué: rjmdzar@gmail.com
