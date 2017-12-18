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
  titlePanel("Round Cake Servings Calculator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
        h3("Please fill in the dimensions of your round cake below."),
       numericInput("cheight",
                    "Choose cake height between 2, 3 or 4 inches. Use the little arrows at the right",
                    min = 2,
                    max = 4,
                    value = 4),
       sliderInput("cdiameter",
                   "Use the slider to choose your cake diameter in inches",
                   min = 4,
                   max = 16,
                   step = 2,
                   value = 10),
       img(src='xmpl.png', align = "center")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(

        h2("How to use the calculator and some guidance how to slice a cake."),
        
        h4("Cake servings calculator"),  
        h5("To use this calculator, you need to know the HEIGHT and the DIAMETER 
        of your round cake. All sizes must be in inches."),    
        h6("A normal portion of cake 
        is approximately 8.5 cubic inch. So the calculation that is carried out in
        this app is calculating the volume of the cake given the height and 
        diameter. Then this is divided by the average normal portion size of 8.5 cubic
        inches. So : ((cakeheight * (cakediameter/2)^2 * 3.1415))/8.5"),
        
        h4("Cake slicing"),
        h6("It is common to slice a small cake (4 or 6 inches) in wedges. All 
        cakes of 8 inches and larger, are cut differently. The idea is to first 
        cut a 2-inch wide 'strip' from the outside of the cake. This 'strip' of 
        cake will then be divides in suare-ish pieces. Just like the picture, but watch out, 
        this is not an interactive picture. So use the cutting instructions below."),
        h6("With 4 inch high cakes, you slice this strip in pieces that are approximately 
        1 inch wide and you put them on their side on the plate. For a 3 inch 
        high cakes; Slice the strip in pieces of 1.3 inch, and use 2 inch for a 2 inch 
        high cake. You can put them in an upward position on the plate if you whish. Repeat 
        this procedure until you are left with a little round cake of appr. 6 inches or smaller.
        This last round piece is cutted like a normal cake, right through the middle, in wedges"),

        
        h2("Number of servings for this round cake is:"),
        h1(textOutput("text1")),
        h6(""),
        h6("Note: Some readers shall notice that the instructions for cake slicing leads
           to cake pieces around 8 cubic inch, while the calculator uses 8.5 inch. This is due
           to my very long experience that most of the time people cut the pieces a little too
           large. After all, it is not very easy to cut very precise. This discrepancy
           between calculation and cutting instruction will safeguard you from the risk of having
           too little pieces of cake for all your guests.")
    )
  )
))
