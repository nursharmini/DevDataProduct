#Body Mass Index (BMI) Calculator Demo
library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Body Mass Index (BMI) Calculator"),
  
    sidebarPanel(
      numericInput('weight', 'Insert your weight in kilograms', 70) ,
      numericInput('height', 'Insert your height in metres', 1.70, min = 0.2, max = 3, step = 0.01),
      submitButton('Calculate'),
     br(),
    
     tags$div(
       tags$ul(
         h6(tags$li('Insert your weight in kilograms and height in metres.')),
         h6(tags$li('Click calculate button to calculate your BMI')),
         h6(tags$li('Your BMI calculation result will be displayed'))
       )
     )
#img(src = "bmi1.png", height = 133, width = 200, align="centre")
 #    h4('Your weight and height is', style = "color:blue"), 
 #    textOutput("inputweightvalue")

    ), 


    mainPanel(
 #     img(src = "bmi2.png", height = 72, width = 72, align="left"),
      
      p(' Body Mass Index (BMI) is a way to look at your body weight relative to your height. It is a scientifically-based index that categorizes you as being underweight, normal, overweight or obese, and also lets you know about your risk for developing obesity-associated diseases.'),
      p('Based on your BMI calculation, you can determine your classification based on the chart below. '),
 #     img(src = "bmi2.png", height = 72, width = 72, align="left"),
      tags$div(
        tags$ul(
          tags$li('BMI below 18.5  : Slender-lean'),
          tags$li('BMI 18.6 to 25  : Ideal weight'),
          tags$li('BMI 26 to 30    : Overweight'),
          tags$li('BMI above30     : Very overweight')
        )
      ),
      
      h4('Your weight and height is', style = "color:steelblue"), 
      textOutput("inputweightvalue"), 
      textOutput("inputheightvalue"),
      h4('Your BMI is', style = "color:steelblue"),
      textOutput("estimation"),
      br(),
      h4(strong(textOutput("diagnostic"), style = "color:brown"))
      
      
    )
    
  )   
)