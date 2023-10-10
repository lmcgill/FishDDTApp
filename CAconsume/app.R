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
                            "<p>Below are the inputs necessary to obtain localized predictions from our DDT model that can be modified with user input. Use options below to:</p>",
                            "<ul><li>Select the fish species caught</li><li>Select the location of capture</li><li>Select your demographic group</li></ul>", 
                            "<p>All options will be in the form of drop-down buttons.</p>"
                            
                          )),
                        ), 
                        mainPanel("Pictures of Fish"))), 
                      
  ))
                      
                      
# ui <- fluidPage(
# 
#     # Application title
#     titlePanel("Old Faithful Geyser Data"),
# 
#     # Sidebar with a slider input for number of bins 
#     sidebarLayout(
#         sidebarPanel(
#             sliderInput("bins",
#                         "Number of bins:",
#                         min = 1,
#                         max = 50,
#                         value = 30)
#         ),
# 
#         # Show a plot of the generated distribution
#         mainPanel(
#            plotOutput("distPlot")
#         )
#     )
# )

# Define server logic required to draw a histogram
server <- function(input, output) {

}

# Run the application 
shinyApp(ui = ui, server = server)
