
library(shiny)
shinyUI(fluidPage(
  # App title
  titlePanel("Psychosis Conversion Risk Calculator"),
  # Sidebar layout with input and output definitions
fluidRow(
  column(4,
      # Input: select list input
      radioButtons(
        "Idea_Sev_Base", 
        "Baseline Violent Ideation",
        c("NO" = 0, "YES" = 1), 
        inline = TRUE
      ),
      radioButtons(
        "Behav_Sev_Base", 
        "Baseline Violent Behavior",
        c("NO" = 0, "YES" = 1), 
        inline = TRUE
      ),
      radioButtons(
        "SI_Base", 
        "Baseline Suicidal Ideation",
        c("NO" = 0, "YES" = 1), 
        inline = TRUE
      ),
      radioButtons(
        "SB_Base", 
        "Baseline Suicidal Behavior",
        c("NO" = 0, "YES" = 1), 
        inline = TRUE
      ),
      radioButtons(
        "race_bin", 
        "Race",
        c("C" = 0, "Non C" = 1), 
        inline = TRUE
      ),
      radioButtons(
        "Trauma_Sexual", 
        "Baseline History of Sexual Trauma",
        c("NO" = 0, "YES" = 1), 
        inline = TRUE
      )),
  
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
      selectInput("P1PD", "P1 Subsymptom Perplexity and Delusional Mood", choices = c("0", "1", "2", "3", "4", "5"))
  ,
      sliderInput("GAF", "Global Assessment of Functioning",min = 0, max = 100, step = 1, value = 0)
  ,  
      sliderInput("GFS..Social", "Social social functioning",min = 0, max = 7, step = 1, value = 0)
  
  ),
  
  column(3,
      tableOutput("result")
  )
    )
  )
)