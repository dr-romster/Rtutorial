# required packages

install.packages("dplyr")
install.packages("ggplot2")
install.packages("ggrepel")
install.packages("gapminder")
install.packages("survival")
install.packages("gganimate")
install.packages("gifski")
install.packages("png")
install.packages('survminer')
# 
# library(survival)
# 
# data("colon")
# head(colon)
# ?colon
# install.packages('survminer')
# library(dplyr)
# library(ggplot2)
# library(survminer)
# 
# survfit(Surv(time, status) ~ rx, data = colon ) %>% 
# ggsurvplot(risk.table = T)  
# 
# 
# survfit(Surv(time, status) ~ rx, data = colon ) %>% 
#   ggsurvplot_facet( facet.by = 'surg', data = colon, pval = T)
#   
# colon %>% mutate(time = time/365) %>% 
#   
# survfit(Surv(time, status) ~ rx, data = . ) %>% 
#   ggsurvplot_facet( facet.by = 'surg', scales = 'free_x',
#                     data = (colon%>% mutate(time = time/365) ), pval = T) + 
#   labs(x = 'Time After Randomisation (Years)') 
# 
# new_colon_s <- 
#   colon %>% 
#   mutate(status = ifelse(time >= (365*5), 0, status)) %>% 
#   mutate(time = time/365) %>% 
#   mutate(time = ifelse(time >= 5, 5.001, time))
#   
# new_colon_s %>% survfit(Surv(time, status) ~ rx, data = . ) %>% 
#   ggsurvplot_facet( facet.by = 'surg', scales = 'free_x',
#                     data = new_colon_s , pval = T) + 
#   labs(x = 'Time After Randomisation (Years)') 


