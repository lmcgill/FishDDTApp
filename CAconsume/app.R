#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
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
             
             tabPanel("Background"),
             tabPanel("What Did I Catch?"),
             tabPanel("My Catch", 
                      sidebarLayout(
                        sidebarPanel(
                          id = "sidebar",
                          tags$h1("Modify Data Inputs"),
                          tags$br(),
                          HTML(paste0(
                            "<p>A side panel where users can select the correct inputs for their specific catch. To obtain accurate model predictions, users will need to:</p>",
                            "<ul><li>Select the fish species caught</li><li>Select the location of capture</li><li>Select the correct demographic group</li></ul>", 
                            "<p>All options will be in the form of drop-down buttons.</p>"
                            
                          )),
                        ), 
                        mainPanel(
                          tags$h2("Model Predictions for DDT"),
                          "A plot comparing the distribution of predicted DDT concentration from the best-fit model for the specific fish-location combination
                                  to Advisory Tissue Levels (ATLs) for the specificied demographic group. The recommended servings per week should be readily apparent.", 
                          tags$h2("CA Consumption Recommendations"), 
                          "Below model predictions for DDT, there should be a figure or text box that pops up with CA Consumption advice (so encompassing all 
                          contaminants not just DDT) from OEHAA recommendations."
                        ))), 
                      
  ))
                      

# Define server logic required to draw a histogram
server <- function(input, output) {

}

# Run the application 
shinyApp(ui = ui, server = server)
