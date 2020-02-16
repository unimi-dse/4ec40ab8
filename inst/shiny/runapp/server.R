#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
shinyServer(function(input, output) {


    output$table <- DT::renderDataTable(DT::datatable({
        data <- movie_table
        if (input$Genre != "All") {
            data <- data[data$Genre == input$Genre,]
        }
        data

    }) )

    output$Plot1 <- renderPlot({

            qplot(data = movie_table,Runtime,fill = Genre,bins = 30)

            })
    output$Plot2 <- renderPlot({

        ggplot(movie_table,aes(x=Runtime,y=Rating))+
            geom_point(aes(size=Votes,col= Genre))
    })

    output$Plot3 <- renderPlot({

        ggplot(movie_table,aes(x=Runtime,y=Gross_Earning))+
            geom_point(aes(size=Rating,col=Genre))
    })

    })
