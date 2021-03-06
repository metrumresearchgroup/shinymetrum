dashboardPage(
  
  # Header -------------------------------------------
  # leave blank when using metrumStyle
  dashboardHeader(),
  
  # Sidebar ------------------------------------------
  dashboardSidebar(
    sidebarMenu(
      menuItem(
        "Data",
        tabName = "data",
        icon = icon("database")
      ),
      menuItem(
        "Visualization",
        tabName = "visualization",
        icon = icon("line-chart")
      )
    )
  ),
  
  # Body ---------------------------------------------
  dashboardBody(
    metrumStyle(), # apply metrum style
    
    tabItems(
      # Data tab ------------------------
      tabItem(
        tabName = "data",
        fluidRow(
          box(
            width = 12,
            h4('Select Car Models'),
            selectInput(
              inputId = "carModels",
              label = "Car Models Included",
              choices = rownames(mtcars),
              selected = rownames(mtcars),
              multiple = TRUE
            )
          )
        ),
        br(),
        fluidRow(
          box(
            width = 12,
            h4('Selected Car Models Data'),
            dataTableOutput('selectedData')
          )
        )
      ),
      
      # Visualization tab ---------------
      tabItem(
        tabName = "visualization",    
        fluidRow(
          box(
            width = 12,
            h4('Selected Car Models MPG Density'),
            plotOutput('selectedDataPlot')
          )
        )
      )
    )
  )
  
)

