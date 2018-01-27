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
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Predict Horsepower from MPG with linear model polynomials"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderMPG", "What is the MPG of the car?", 10, 35, value = 20),
      checkboxInput("showModel1", "Show/Hide Model 1", value = TRUE),
      checkboxInput("showModel2", "Show/Hide Model 2", value = TRUE),
      p("Model 1 is a 2nd order Polinomial Linear model."),
      p("Model 2 is a 4th order Polinomial Linear model.")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("plot1"),
      h3("Predicted HP from Model 1:"),
      span(textOutput("pred1",h3), style="color:red"),
      h3("Predicted HP from Model 2:"),
      span(textOutput("pred2",h3), style="color:blue"),
      h4("Instructions"),
      p("This simple application, compares the prediction values for several linear polinomial models 2nd and 4th order for the mtcars dataset in the default R package."),
      p("The main graph displays the original values from the dataset (in black) and the lines for the predictive models used as well as the values predicted based on an input MPG. An MPG prediction value of 20 is set by default."),
      p("You can change the value of the MPG on the slider and the application will automatically recalculate and plot the predicted values based on the prediction models. You can also choose to show or hide the linear model line using the checkboxes.")
    )
  )
))
