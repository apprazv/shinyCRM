library(shiny)
library(shinydashboard)
library(shinyWidgets)
library(DT)
library(leaflet)
library(rhandsontable)
library(dplyr)
library(RStripe)
library(rmarkdown)
library(shinyalert)
library(shinydashboardPlus)

time_period_df <- data.frame("Time_Period" = c("Bi-Weekly","Month","Quarter"),
                             "Days" = c(15,30,90))

opps <- read.csv("data/opportunities.csv",stringsAsFactors = FALSE)
contacts <- read.csv("data/contacts.csv",stringsAsFactors = FALSE)
products <- read.csv("data/products.csv",stringsAsFactors = FALSE)

# stripe_creds <- read.csv("api_keys/stripe.csv",stringsAsFactors = FALSE)


app_modules <- list.files("modules")
for (module in 1:length(app_modules)) {
  source(paste0("modules/",app_modules[module]))
  print(paste0("Yay! It sourced ",app_modules[module]))
}


# # Making a HexSticker #
# library(hexSticker)
# imgurl <- "https://www.vhv.rs/dpng/d/355-3553213_crm-dorm-room-fund-logo-transparent-hd-png.png"
# sticker(imgurl,package="shinyCRM", p_size=20, s_x=1, s_y=.75, s_width=.6,
#         filename="images/imgfile.png",h_color = "#ffffff",h_fill="#242F3F")
