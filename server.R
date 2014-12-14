library(shiny)
source("swift.R")

shinyServer(function(input, output) {
        
        dataInput <- reactive({
                if (!input$text == ""){
                swift.output(input$text)
                } else {return("Please enter text")}
        })
        
        output$text1  <- renderText({
                dataInput()[1]
        })
        output$text2  <- renderText({
                dataInput()[2]
        })
        output$text3  <- renderText({
                dataInput()[3]
        })
})