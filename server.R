shinyServer(function(input, output){
  # It is a function that creates a dataframe called data for the inputs
  # The function is "reactive" and therefore should be automatically re-executed when inputs change
  #inputdata <- reactive({
  #  data <- data.frame(
  #    Idea_Sev_Base = as.numeric(input$Idea_Sev_Base),
  #    Behav_Sev_Base = as.numeric(input$Gender),
  #    SI_Base = as.numeric(input$SI_Baser),
  #    race_bin = as.numeric(input$race_bin),
  #    P4v = as.numeric(input$P4v),
  #    P1 = as.numeric(input$P1),
  #    P5 = as.numeric(input$P5),
  #    N1 = as.numeric(input$N1),
  #    N5 = as.numeric(input$N5),
  #    D3 = as.numeric(input$D3),
  #    G2 = as.numeric(input$G2),
  #    G3 = as.numeric(input$G3),
  #    GAF = as.numeric(input$GAF),
  #    P1PD = as.numeric(input$P1PD)
  #  )
  #  data
  
  #})
  # Table to display the ideal body weight
  output$result <- renderTable({
    # Executes the "inputdata" function to save the dataframe as "data"
   # data = inputdata()
    odds = (exp(1)^(  as.numeric(input$Idea_Sev_Base) * 0.51 +
                       as.numeric(input$Behav_Sev_Base) * 0.62 +
                       as.numeric(input$SI_Base) * 0.02 +
                      as.numeric(input$race_bin) * 0.38 +
                      as.numeric(input$P4v) * (-0.25) +
                       as.numeric(input$P1) * 0.25 +
                       as.numeric(input$P5) * 0.16 +
                       as.numeric(input$N1) * 0.12 +
                       as.numeric(input$N5) * 0.02 +
                       as.numeric(input$D3) * 0.02 +
                       as.numeric(input$G2) * (-0.14) +
                       as.numeric(input$G3) * 0.04 +
                       as.numeric(input$GAF) * (-0.02) +
                       as.numeric(input$P1PD) * 0.02
                   ))
    prob = 1/(1+1/odds)

    # create a dataframe for output
    resultTable = data.frame(
      Result = "Your Probability is",
      Prob = prob
    )
    resultTable
  })
})
