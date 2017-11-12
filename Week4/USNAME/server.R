#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

#setwd("C:\\Users\\marie\\Desktop\\Data Science\\Data products\\Week4")
namedata<-read.csv("FavouriteName.csv", stringsAsFactors = FALSE)


library(shiny)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  #dataforplot <- reactive({  
#dataforplot<-subset(namedata,namedata$Name==input$Name)})

  output$namePlot<-renderPlot({
    dataforplot<-subset(namedata,namedata$Name==input$Name)
    plot(dataforplot$Year,dataforplot$Count,type="h",main=input$Name,xlab="Year",ylab="Count")
            
  })
  
})
