#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/``
#

library(shiny)
library(dplyr)
library(ggplot2)

if(!require(shinythemes)) install.packages("shinythemes", repos = "http://cran.us.r-project.org")
if(!require(shinyWidgets)) install.packages("shinyWidgets", repos = "http://cran.us.r-project.org")

# Define UI for application that draws a histogram

ui <- bootstrapPage(
  navbarPage(theme = shinytheme("flatly"), collapsible = TRUE,
             HTML('<a style="text-decoration:none;cursor:default;color:#FFFFFF;" class="active" href="#">CA Fish Consumption (in development)</a>'), id="nav",
             # Specify titles and that we want multiple panels 
             windowTitle = "CA Fish Consumption (in development)",
             
             tabPanel("Background", 
                      sidebarLayout(
                        sidebarPanel(
                          id = "sidebar",
                          tags$h1("A landing page for users"),
                          tags$br(),
                          HTML(paste0(
                            "<p>This page should give background information on DDT dumping in Southern California.</p>"
                          )),
                        ), 
                        mainPanel(
                          tags$h3("Possible additions to this page could include the following sections:"),
                          tags$h2("What did I catch?"),
                          "Show images of fish species included in the modeling effort. With over 60 species of fish and elasmobranch 
                          included in this analysis, it would be beneficial to have a reference page
                          where users can look at images of the species included to compare against their catch. A collection of beautiful, anatomically correct 
                          illustrations is available here: https://marinespecies.wildlife.ca.gov/.",
                          tags$h2("Where am I located?"), 
                          "An interactive map, perhaps generated with leaflet, where users can click on their geographic location to get latitude and longitude 
                          values to be used as input in the 'User Inputs - Select the location of capture' section on the My Catch page."
                        ))), 
             tabPanel("My Catch", 
                      sidebarLayout(
                        sidebarPanel(
                          id = "sidebar",
                          tags$h1("User Inputs"),
                          tags$br(),
                          HTML(paste0(
                            "<p>A side panel where users can select the correct inputs for their specific catch. To obtain accurate model predictions, users will need to:</p>",
                            "<ul><li>Select the fish species caught</li><li>Select the location of capture</li><li>Select the correct demographic group</li></ul>", 
                            "<p>All options will be in the form of drop-down buttons.</p>"
                            
                          )),
                        ), 
                        mainPanel(
                          tags$h2("Model Predictions for DDT"),
                          "This section should show predicted DDT concentrations from the best-fit model for the specific species-location combination input by the user. 
                          Results should be compared to Advisory Tissue Levels (ATLs) for the specificied demographic group. The recommended servings per week should be readily apparent.", 
                          tags$h2("CA Consumption Recommendations"), 
                          "Below model predictions for DDT, there should be a figure or text box that pops up with offical CA Consumption advice for the species-location combination input by the user. 
                          The 'Model Predictions for DDT' section above only examines DDT, whereas official CA consumption 
                          advisories encompass a variety of contamiants, including DDT, Mercury, and PCBs. As DDT levels from a region may be within safe to eat thresholds, but other contamiannts may be high, 
                          we want to give the offical OEHAA recommendations here as well."
                        ))), 
                      
  ))
                      

# Define server logic required to draw a histogram
server <- function(input, output) {

}

# Run the application 
shinyApp(ui = ui, server = server)
