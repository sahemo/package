
install_or_load_pack <- function(pack){
  
  create.pkg <- pack[!(pack %in% installed.packages()[, "Package"])]
  
  if (length(create.pkg))
    
    install.packages(create.pkg, dependencies = TRUE)
  
  sapply(pack, require, character.only = TRUE)
  
  #I know I should be using purr here, but this is before the Tidyverse is loaded. I know you Tidyverse trend setters will have me here.
  
}

pckg <- c("MASS", "lmtest", "car", "haven", "foreign", "dplyr", "ggplot2", "contrast", "orcutt", "forecast",
          "aod", "faraway", "survival", "lme4", "tseries")


install_or_load_pack(pckg)


## No need to run these code below ##

require(MASS)
require(lmtest)
require(car)
require(haven)
require(foreign)
require(dplyr)
require(ggplot2)
require(contrast)
require(orcutt)
require(forecast)
require(aod)
require(faraway)
require(survival)
require(lme4)
require(tseries)

