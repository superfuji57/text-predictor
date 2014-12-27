library(shiny)

shinyUI(fluidPage(
        
        titlePanel("Next-Word Text Prediction"),
        
        # Sidebar with a slider input for the number of bins
        sidebarLayout(
                sidebarPanel(
                        h4("Predictive text algorithm through natural language processing in R."),
                        textInput("text", "Enter text here:", value = ""),
                        p("This app was built for the Data Science Specialization offered on Coursera and taught by Brian Caffo, 
                          Roger Peng, and Jeff Leek of the Johns Hopkins Biostatistics department.")
                ),
                
                mainPanel(
                        tabsetPanel(type = "tabs",
                                tabPanel("Application",
                                        h3("Word prediction:"),
                                        tags$li(textOutput("text1")),
                                        tags$li(textOutput("text2")),
                                        tags$li(textOutput("text3")),
                                        h5(""),
                                        p(textOutput("allText"))
                                            ),
                                
                                tabPanel("Methodology",
                                         h3("Here's how I did some things.")
                                        ),
                                
                                tabPanel("About")
                        
                )
                ),
                
                
        )
))