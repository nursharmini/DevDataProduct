library(shiny) 

BMI<-function(weight,height) {weight/(height^2)}

diagnostic_f<-function(weight,height){
  BMI_value<-weight/(height^2)
  ifelse(BMI_value<18.5,"Slender-lean",ifelse(BMI_value<25,"Ideal weight",
        ifelse(BMI_value<30,"Overweight","Very Overweight")))
}

shinyServer(
  function(input, output) {
    output$inputweightvalue <- renderText({paste("Weight", input$weight, "kg")})
    output$inputheightvalue <- renderText({paste("Height", input$height, "m")})
    output$estimation <- renderText({paste(BMI(input$weight,input$height))})
    output$diagnostic <- renderText({paste("You are ",diagnostic_f(input$weight,input$height))})
  } 
)


