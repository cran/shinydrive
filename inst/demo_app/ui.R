
# Define UI for application that draws a histogram
navbarPage(title = HTML(paste0('<p style="margin-top: 0.05cm;">', paste0(rep("&nbsp;", 25), collapse = ""), '&nbspshinydrive</p>')), id = "nav-id", collapsible = TRUE,
           position = "fixed-top", theme = "css/custom.css",
           header = div(
             br(), br(), br(), br(),
             a(href = "https://www.datastorm.fr",
               target = "_blank", img(src = "img/img-datastorm-logo-white.png", class = "ribbon", style = "margin-left: 0cm;margin-top: 0.1cm;height: 55px")),
             a(href = "https://github.com/datastorm-open/shinydrive",
               target = "_blank", img(src = "img/github.png", class = "ribbon", style = "margin-left: 3cm;margin-top: 0cm;height: 60px")),
             # footer
             div(class = "ds_app_footer", div(p("copyright © Datastorm 2020", style = "color:white"), align = "center")),
           ),
           windowTitle = "shinydrive",
           tabPanel("Introduction",
                    includeMarkdown("www/script/intro.md")
           ),
           tabPanel("Basic",
                    includeMarkdown("www/script/basic.md"),
                    hr(),
                    fluidRow(
                      column(1, offset = 1, checkboxInput("admin", "Admin ?", F)),
                      column(2, selectInput("langue", NULL, choices = c("EN", "FR", "CN"))),
                      column(2, checkboxInput("force_desc", "Force description ?")),
                      column(2, h5("Update save_dir as reactive : ")),
                      column(2, selectInput("update_directory", NULL,
                                              choices = c("Dir1" = sd_path, "Dir2" = sd_path_2)))
                    ),
                    hr(),
                    shiny_drive_ui(id = "idm"),
                    hr(),
                    includeMarkdown("www/script/basic_reactive.md")
           ),
           tabPanel("Advanced",
                    includeMarkdown("www/script/adv.md")
           ),
           br(), br(), br(), br()
)
