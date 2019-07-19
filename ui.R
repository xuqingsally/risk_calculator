
library(shiny)
shinyUI(fluidPage(
  # App title
  titlePanel("Psychosis Conversion Risk Calculator"),
  # Sidebar layout with input and output definitions
fluidRow(
  column(4,
      # Input: select list input
      selectInput("Idea_Sev_Base","Baseline Violent Ideation", choices = list("NO" = 0, "Yes" = 1), selected = 0)
  ,
      selectInput("Behav_Sev_Base", "Baseline Violent Behavior", choices = list("NO" = 0, "YES" = 1), selected = 0)
  ,
      selectInput("SI_Base", "Baseline Suicidal Ideation", choices = list("NO" = 0, "YES" = 1), selected = 0)
  ,      
      selectInput("race_bin", "Race", choices = list("C" = 0, "Non C" = 1), selected = 0)
  ),
  
  column(4,
      selectInput("P4v", "Visual Hallucinations", choices = c("0", "1", "2", "3", "4", "5", "6"))
  ,
      selectInput("P1", "Unusual Thought Content", choices = c("0", "1", "2", "3", "4", "5", "6"))
  ,      
      selectInput("P5", "Disorganization", choices = c("0", "1", "2", "3", "4", "5", "6"))
  ,
      selectInput("N1", "Social Anhedonia", choices = c("0", "1", "2", "3", "4", "5", "6"))
  ,
      selectInput("N5", "Ideational Richness", choices = c("0", "1", "2", "3", "4", "5", "6"))
  ),
  
  column(4,
      selectInput("D3", "Trouble With Focus and Attention", choices = c("0", "1", "2", "3", "4", "5", "6"))
  ,
      selectInput("G2", "Dysphoric Mood", choices = c("0", "1", "2", "3", "4", "5", "6"))
  ,
      selectInput("G3", "Motor Disturbance", choices = c("0", "1", "2", "3", "4", "5", "6"))
  ,
      selectInput("GAF", "Global Assessment of Functioning", choices = c("0", "1", "2", "3", "4", "5", "6"))
  ,
      selectInput("P1PD", "P1 Subsymptom Perplexity and Delusional Mood", choices = c("0", "1", "2", "3", "4", "5", "6"))

  ),
  
  column(3,
      tableOutput("result")
  )
    )
  )
)