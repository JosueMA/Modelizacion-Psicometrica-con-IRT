# Modelamiento Psicométrico con IRT

Aquí podrás encontrar todo el material del curso.
***

Para instalar todos los paquetes que usaremos a lo largo del curso, copien y luego corran la siguiente serie de comandos en la consola de RStudio:

```
# Función para instalar paquetes y cargarlos
ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if(length(new.pkg)) install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

# Paquetes con los cuales usar la función
packages <- c("tidyverse", "psych", "TAM", "ltm", "psychometric", "foreign", "statisticalModeling", "plotly", "ggthemes", 
"markdown", "rmarkdown", "shiny", "learnr", "QuantPsyc", "datasauRus", "caret")

# Uso de la función
ipak(packages)
```



#### Links útiles

* Descargar R: https://cran.r-project.org
* Descargar RStudio: https://www.rstudio.com/products/rstudio/download/
* Extensión para descargar archivos individuales de Github (sólo funciona para Google Chrome:
https://chrome.google.com/webstore/detail/octo-mate/baggcehellihkglakjnmnhpnjmkbmpkf
* R para principiantes: https://cran.r-project.org/doc/contrib/rdebuts_es.pdf


**Contacto:**

Ramses: drvazque@gmail.com; Josué: rjmdzar@gmail.com
