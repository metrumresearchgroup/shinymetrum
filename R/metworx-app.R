metworxApp <- function(..., metworxTitle = "Metworx Shiny App"){
  shiny::tagList(
    shiny::tags$head(
      shiny::tags$meta(
        content="width=device-width, initial-scale=1.0",
        name="viewport"
      ),
      shiny::tags$link(
        rel="stylesheet",
        media="screen",
        href="https://fonts.googleapis.com/css?family=Raleway"
      ),
      shiny::tags$link(
        rel = "shortcut icon",
        href = "https://raw.githubusercontent.com/metrumresearchgroup/shinymetrum/master/inst/img/favicon.ico"
      ),
      shiny::includeCSS(
        system.file(
          "metworx-app.css",
          package = "shinymetrum"
        )
      ),
      includeMetrum("metrum-js", "js")
    ),
    shiny::div(
      class = "container-fluid",
      shiny::tags$header(
        shiny::tags$nav(
          class = "navbar navbar-custom",
          shiny::tags$a(
            href = "http://metrumrg.com/",
            target = "_blank",
            shiny::tags$img(
              src = "https://raw.githubusercontent.com/metrumresearchgroup/shinymetrum/master/inst/img/metworxLogo.png",
              alt = "Metworx",
              width = "220",
              height = "69"
            )
          )
        )
      )
    ),
    shiny::tags$div(
      class = "jumbotron jumbo-head",
      shiny::tags$div(
        class = "container-fluid",
        shiny::tags$h1(metworxTitle)
      )
    ),
    ...
  )
}
