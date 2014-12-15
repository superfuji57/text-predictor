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
        output$allText <- renderText({
                input$text
                dat <- data.frame(x = numeric(0), y = numeric(0))
                
                withProgress(message = 'Predicting next word', value = 0, {
                        # Number of times we'll go through the loop
                        n <- 10
                        
                        for (i in 1:n) {
                                # Each time through the loop, add another row of data. This is
                                # a stand-in for a long-running computation.
                                dat <- rbind(dat, data.frame(x = rnorm(1), y = rnorm(1)))
                                
                                # Increment the progress bar, and update the detail text.
                                incProgress(1/n, detail = paste("Doing part", i))
                                
                                # Pause for 0.1 seconds to simulate a long computation.
                                Sys.sleep(0.1)
                        }
                })
        })
})