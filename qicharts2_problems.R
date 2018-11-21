######################################################

# This R script demonstrates the basic functionality of the qic() function from
# the qicharts2 package for constructing run and control charts.
#
# You need recent versions of R and RStudio installed on your computer and the
# latest version of the qicharts2 package installed in R.
#
# Place the script in a separate folder together with the data file,
# qicharts2_wrkshp.RData.
#
# Open RStudio by double clicking this file from file manager.
#
# Jacob Anhøj, 2018-09-26

######################################################

load('qicharts2_wrkshp.RData')
install.packages("qicharts2")
library(qicharts2)

# HELP! ----
help('qic')
vignette('qicharts2')

# Basic qic() syntax ----

## Run chart from 24 random normal numbers
x<- rnorm(24)
qic(x)

## ... add chart title and axis labels
qic(x, title = 'first run chart', ylab= 'sample', xlab = 'time')
# Using qic() with data frames ----

## Run chart of daily systolic blood pressure from blood_pressure dataset
qic(x = , 
	y =, 
	data = , 
    title = "SBP over time Run chart", 
    xlab = , 
    ylab =   )
    
## Run chart of monthly proportion of harmed patients from patient_harm dataset
qic(x = , 
	y = , 
	n= , 
	data = , 
	decimals = )

## ... use unnamed arguments for x, y, and n [ x , y, and denominator ]

## ... add decimal to centre line label

## ... multiply proportion by 100
qic(x = , 
	y = , 
	n= , 
	data = ,
			)
	
## ... show percentage

# Faceted charts ----

## Run chart of monthly number of hospital infections per 10000 patient days
## from hospital_infections dataset
qic( x = , 
	y = , 
	n = , 
	facets = ~ , 
	data =  )
	
## ... facet by hospital

## ... facet by infection and hospital
qic( x = , 
	y = , 
	n = , 
	facets = ~ , 
	data = )
	
## ... release axis scales
qic(x = , 
	y = , 
	n = , 
	facets = , 
	data = hospital_infections, 
	scales = 'free')

# Detecting non-random variation with run charts ----

# changes in a system are detected by an unusually long run, or points not crossing the median line. he is not a fan of the IHI trend rules. QIC flags these with a red dashed median line. 

# the `signal_limits` data frame contains an exemplar of allowed number of crossings and runs in the run chart for a shift to be deteceted. 



## Run chart of monthly number of cardiac arrests from arrests dataset
qic(x = , 
	y = , 
	data = )

## Critical values for longest run and number of crossings

## ... print summary

## Run chart of weekly average hours from admission to antibiotics from
## abx_delay dataset

## ... aggregate by median

# Shewhart control charts for counts ----

## P chart of monthly percentage of harmed patients from patient_harm dataset
qic ( x = , 
	y = , 
	n = , 
	data = patient_harm, 
	chart  = 'p')
	
## C chart of monthly number of patient harms from patient_harm dataset

qic ( x =  ,
	y =  , 
	data = , 
	chart  = 'c') - # but this does not account for volumes

## U chart of monthly number of harms per 1000 patient days from patient_harm
## dataset

qic ( x = ,
	y =  , 
	n = days, 
	data = patient_harm, 
	chart  = 'u')
	
## ... exclude freak data point from calculations of centre and control limits

qic ( x = ,
	y =  , 
	n = days, 
	data = patient_harm, 
	chart  = 'u', 
	exclude = 35)

# Case 1: Post operative mortality ----

qic( x = , 
	y = ,
	n = ,
	data = postop_mortality,
	chart = 'p',
	part = )

## Monthly percentage of post operative mortality from postop_mortality dataset

## ... freeze baseline median

## ... split chart after baseline

## ... add control limits

# Case 2: Clostridium difficile infections ----

## Monthly number of clostridium difficile infections from cdiff dataset

## ... freeze baseline median

## ... split chart after baseline

## ... add control limits

# Shewhart control charts for measures ----

## I chart of daily systolic blood pressure from blood_pressure dataset

## ... MR chart

## Xbar chart of weekly radiation dose from radiation dataset

## ... S chart
# Control charts for rare events ----

## T chart of days between newborns with asphyxia from asphyxia dataset

## G chart of deliveries between newborns with asphyxia from asphyxia dataset

# Prime charts for overdispersed data ----

## P chart of percentage attendances seen within 4 hours from nhs_accidents
## dataset

## ... use I chart

## ... use P prime chart
