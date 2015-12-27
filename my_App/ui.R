library(shiny)

shinyUI(
  navbarPage('-Demonstration of The Central Limit Theorem-',
    tabPanel("APP",
      sidebarLayout(
        sidebarPanel(
          #BUTTON for displaying the true population mean
          tags$head(
            tags$style(HTML('#showMu{background-color:orange}')),
            tags$style(HTML('#addSample{background-color:lightblue'))
          ),
          
          
          #SAMPLE SIZE
          sliderInput('sampleSize', 'Sample Size:', 
                        value=25, min=5, max=100, step=1, width='100%'),
          
          #Number of SAMPLES
          sliderInput('numOfSamples', 'Num. of Samples:', 
                      value=1, min=1, max=50, step=1, width='100%'),
    
          actionButton("addSample", "Add Samples"),
          HTML("<br><br>"),
          
          actionButton("showMu", "Show True Pop. Mean"),
          HTML("<br><br>"),
          HTML('<p>*note: please click on <em>User Guide</em> tab for the description and user guide of the app</p>')
        ),
        
        
        mainPanel(
          HTML('<p style="font-size:120%; font-family:courier"><b>True Population Mean:</b></p>'),
          verbatimTextOutput("trueMean"),
          
          HTML('<p style="font-size:120%; font-family:courier"><b>Current Sample Distribution Mean:</b></p>'),
          verbatimTextOutput("ss"),
          
          HTML('<p style="font-size:120%; font-family:courier"><b>Distribution of Sample Means</b></p>'),
          verbatimTextOutput("summary"),
          
          HTML("<br><br>"),
          HTML('<p style="font-size:120%; font-family:courier"><b><center>Histogram</center></b></p>'),
          plotOutput('Hist')
        )
    )
  ),
  tabPanel("User Guide",
           mainPanel(
             includeMarkdown("UserGuide.md")
           )
  )
))