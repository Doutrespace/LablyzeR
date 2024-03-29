
DatabaseTest <- Database_ImAi[1:40,]
names(DatabaseTest)

DatabaseTest[is.na(DatabaseTest[])]

is.na(DatabaseTest)


DatabaseTest[is.na(DatabaseTest)] = 0


NewNames <- as.character(seq(1:length(names(Database_ImAi))))
names(Database_ImAi) <- NewNames
names(Database_ImAi)
Database_ImAi[is.na(Database_ImAi)] = 0
Database_ImAi <- Database_ImAi %>% na.omit()

write.csv(x= Database_ImAi,file = "C:\\Users\\nilsk\\Documents\\PROJECTS\\LablyzeR\\data\\New.csv",row.names = F)



shinyUI(
  fluidPage(
    dashboardPage(
      dashboardHeader(
                      titleWidth='100%',
                      #title = 'ShinyR'
                       title = span(
                        tags$img(src= "images/header3.png", width = '100%'),
                         column(12, class="title-box",
                                tags$h1(class="primary-title", 
                                        style='margin-top:10px;', 
                                        'shinyR'),
                                tags$h2(class="primary-subtitle",
                                        style='margin-top:10px;', 
                                        'Automatic dashboard for your data')
                                )
                         )
                      ),
                      
      
      dashboardSidebar(
        uiOutput("data_to_use"),
        uiOutput("input_data"),
        uiOutput("columns_to_analyze"),
        uiOutput("analyze_action_bttn"),
        uiOutput("filters")
        ),
      
      dashboardBody(
        includeCSS("www/custom.css"),
        tags$head(includeScript("www/js/google-analytics.js")),
        tags$body(includeScript("www/js/google-analytics-tabs.js")),
        tags$script(type = "text/javascript", src = "js/busy.js"),
        tags$div(class = "busy",  img(src = "images/giphy.gif", align = "center")),
        tags$style(type="text/css",
                   ".shiny-output-error { visibility: hidden; }",
                   ".shiny-output-error:before { visibility: hidden; }"
        ),
        dashboardthemes::shinyDashboardThemes(theme = "grey_light"),
        uiOutput("body_page_conditional")
      )
      
    )
  )
)

