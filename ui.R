# Load packages ----
library(shiny)
library(quantmod)
#Create the user interface
ui <- fluidPage(
    titlePanel(strong("StockVisualization")),
        sidebarLayout(
        sidebarPanel(
            helpText("Select a stock to examine.

        Information will be collected from Yahoo finance."),
            textInput("symb", "Symbol", "TSLA"),
            
            dateRangeInput("dates",
                           "Date range",
                           start = "2013-01-01",
                           end = as.character(Sys.Date())),
            
            br(),
            br(),
            checkboxInput("log", "Plot y axis on log scale",
                          value = FALSE),
        ),
        mainPanel(plotOutput("plot"))
    )
)