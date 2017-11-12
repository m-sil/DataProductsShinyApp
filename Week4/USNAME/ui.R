#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  
  # Application title
 headerPanel("Historical popularity in US of my favourites girl's names"),
  
  # Sidebar with a slider input for number of bins 
  
    sidebarPanel(
      selectInput("Name", "Names",
                  c("Rose"="Rose","Catherine"="Catherine","June"="June","Sophie"="Sophie"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h3("Select a name in the drop down list to see a barplot of the number of babies given that name in the US"),
      plotOutput("namePlot")
      
    )
  ))

