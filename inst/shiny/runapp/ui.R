#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    div(titlePanel(title=h1("Top 50 movies", align="center"))),


    # Create a new Row in the UI for selectInputs
    fluidRow(
        column(3,
               selectInput(inputId = "Genre",
                                  label = "Genre:", c("All", unique(as.character(movie_table$Genre))))
               )),


   navlistPanel(
       tabPanel("Table", DT::dataTableOutput("table"),align = "center"),
       tabPanel("Plot",  plotOutput(outputId = "Plot1"),align = "center"),
       tabPanel("Plot2",  plotOutput(outputId = "Plot2"),align = "center"),
       tabPanel("Plot3",  plotOutput(outputId = "Plot3"),align = "center")

   )


)
)

