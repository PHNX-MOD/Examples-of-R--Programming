library(shinythemes)
library(shiny)
library(shinydashboard)


shinyUI(fluidPage(
  theme = shinytheme("cosmo"),
  
  tags$head(tags$style(
    HTML('
         #sidebar {
            background-color: #d46ed4;
        }

        body, label, input, button, select { 
          font-family: "Arial";
        }')
  )),
  
  dashboardPage(
    dashboardHeader(title = "LiveGrowth Basketball"),
    
    #sidebar panel
    
    dashboardSidebar(
      sidebarMenu(
        menuItem("Basketball", tabName = "basketabll"),
        menuItem("Customer",  tabName = "customer"),
        menuItem("Rnd Pull", tabName = "qckAna"),
        menuItem("Data", tabName = "data")),
      width=110),
    
    #dashboard body
    
    dashboardBody(
      tags$style(".small-box.bg-red { background-color: #363c40!important; color: red !important;"),
      tags$style(".small-box.bg-green { background-color: #363c40 !important; color: green !important;"),
      
      tabItems(
        tabItem(tabName = "basketabll",
                #========================================1st tab item ======================================
                
                p("Select 'Select Input Date' or 'Select Weeks/Months' and click search here first"),
                
                fluidRow(
                  
                  box(dateRangeInput('daterange', 'Select Input Date',
                                     min = "2021-01-01",
                                     format="mm/dd/yyyy",
                                     width='250px'),
                      background='blue',status = 'primary', solidHeader = T,collapsible = TRUE, width=2, height = '100px'),
                  box(selectInput("select_date_range", 'Select Weeks/Months',
                                  c("---","1 Week","1 Month", "3 Months", "6 Months","1 Year")),
                      background='olive',status = 'primary', solidHeader = T,collapsible = TRUE, width=2, height = '100px'),
                  
                  actionButton("select_date", "Click here first", style='font-size:80%;height:40px',
                               class="btn-warning", size="large")
                  
                ), 
                
                fluidRow(
                  box(
                    h3("League Performance", style = "color:black; text-align:center"),
                    hr(style = "border-top: 1px solid #000000;"),
                    DT::dataTableOutput("df1"),
                    collapsible = TRUE, status = 'warning'
                  ),
                  fluidRow(
                    
                    box(h3("Market Performance", style = "color:black; text-align:center"),
                        hr(style = "border-top: 1px solid #000000;"),
                        DT::dataTableOutput("df2"),
                        actionButton("select_date3", "Market stats", style='font-size:65%;height:30px;',
                                     class="btn-primary", size="extra-small"),
                        collapsible = TRUE, status = 'primary')
                    
                   
                  )
                  
                )
                
                
                
                
        ),
        #========================customer analysis section =======================================================================================               
        tabItem(tabName = "customer",
                #================================2nd tabitem=========================================
                
                fluidRow(h2("Customer Analysis", style = "color:black; text-align:center"),
                         p("Input customer here or select the customer(row) from customer performance table in the Basketball section",
                           style = "color:black; text-align:center")),
                hr(style = "border-top: 1px solid #000000;"),
                
                fluidRow(
                  
                  box(dateRangeInput("daterange2",
                                     "Select date-range",
                                     min = "2021-01-01",
                                     format="mm/dd/yyyy",
                                     start = '2021-01-01'),
                      background='blue',status = 'primary', solidHeader = T,collapsible = TRUE, width=2, height = '120px'),
                  
                  box(textInput("search_customer", "Input customer", width = '250px'),
                      background='olive',status = 'primary', solidHeader = T,collapsible = TRUE, width=2, height = '120px'),
                  
                ),
                
                fluidRow(
                  
                  
                  box(h3("Overview", style = "color:black; text-align:center"),
                      hr(style = "border-top: 1px solid #000000;"),
                      
                      actionButton("customer_per_1x", "Overview", style='font-size:65%;height:30px;',
                                   class="btn-primary", size="extra-small"),
                      collapsible = TRUE, status = 'primary')
                  
                  
                  
                  )),
        
        #============================================quick analysis==================================
        tabItem(tabName = 'qckAna',
                h1("Pull data from rnd::sql"),
                fluidRow(
                  column(5,
                        
                  ),
                  column(7,
                    
                  ))
        ),
        
        #============================================3rd tab item
        
        tabItem(tabName = "data",
                
           
                
        )
        #==================
        
        
      )
      
      
    )
  )
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
))