### Data Science Capstone: Course Final Project
### ui.R file for the Shiny app
### Github repo : https://github.com/arpadthetall/capstone

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Coursera Data Science Capstone: Course Project",
                   tabPanel("Predict the Next Word",
                            br(),
                            br(),
                            # Sidebar
                              sidebarLayout(
                              sidebarPanel(
                                  HTML("<strong>Author: Arpad Kovacs</strong>"),
                                  br(),
                                  HTML("<strong>Date: January 4, 2018</strong>"),
                                  br(),
                                  h3("User Input"),
                                  helpText("Type an incomplete sentence to initiate the next word prediction!"),
                                    textInput("inputString", "Enter a your text here",value = ""),
                                    tags$style(type='text/css', '#text1 {background-color: rgba(140,170,170,0.40); color: blue;}'),
                                  br(),
                                  br()
                                 ),
                              mainPanel(
                                  h3("Output"),
                                  br(),
                                  h4("Next Predicted Word"),
                                  verbatimTextOutput("prediction"),
                                  strong("Sentence Input:"),
                                  tags$style(type='text/css', '#text1 {background-color: rgba(140,170,170,0.40); color: blue;}'), 
                                  textOutput('text1'),
                                  br(),
                                  strong("Note:"),
                                  tags$style(type='text/css', '#text2 {background-color: rgba(140,170,170,0.40); color: black;}'),
                                  textOutput('text2')
                              )
                              ),
                            
                            br(),
                            img(src = "./headers.png")
                  ),
                   tabPanel("About",
                            sidebarLayout(
                                sidebarPanel(
                                    HTML("<strong>Author: Arpad Kovacs</strong>"),
                                    br(),
                                    HTML("<strong>Date: January 4, 2018</strong>")
                                    
                                ),
                            mainPanel(
                              includeMarkdown("about.md")
                              )
                    ),
                            br(),
                            img(src = "./headers.png")
                    )
)
)