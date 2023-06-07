#filter from list 

mtcars %>% 
  filter(cyl %in% c(4, 6))

# Replace NA with values in another row of same column for each group in r

x %>%
  group_by(id) %>%
  mutate(name = unique(name[!is.na(name)]))
  
# funtion to subset the clmn


# trycatch error https://cran.r-project.org/web/packages/tryCatchLog/vignettes/tryCatchLog-intro.html

an.error.occured <- FALSE
tryCatch( { result <- log("not a number"); print(res) }
          , error = function(e) {an.error.occured <<- TRUE})
print(an.error.occured)

# forloop and create an empty vector

emty_vec <- c()
for(i in some_vec){
  emty_vec <- c(somefucn of i)   
}

for(n in 1:len(vec){  #forloop with length of the vec in consid
  vec1[n]
}
    
# sym add to function to use to column

 some_fun <- function(colmn1){
   data%>%
    mutate(clm = ifelse(is.na(!!sym(colmn1)), mean(!!sym(colmn1), na.rm=TRUE), !!sym(colmn1))) #colmn1 will be used a strng when using this func 
 }
 
#case when

 mutate(
      newclm= case_when(
        clm1   %in% 0:10 ~ "0-10%",
        clm2   %in% 10:20 ~ "10-20%",
        clm3   %in% 20:30 ~ "20-30%"
#create an empty df
df <- data.frame(Column1 = character(), 
                     column2 = character())
    Column1 <- c(NA)
    column2 <- c(NA)
    df_na <- data.frame(column1, column2)
        
        
 #ggplot with grids       #also check out cowplots for plot_grids
 data_to_plot <- function(lge, w_t, chosen_side1, chosen_side2, bpv){
  rbind(league_plot(lge, w_t, chosen_side1, bpv),
        league_plot(lge, w_t, chosen_side2, bpv))%>%
    ggplot(aes(MTG, bpv, colour=ChosenSide))+
    geom_line(size=1)+
    theme_minimal()+
    labs(title = wager_type)+facet_grid(.~qtr, scales = "free")+          #qtr is case when divide for grids
    ggtitle(paste0(lge," ",wager_type," ",bpv ))+
    theme(axis.title.x = element_text(colour = "DarkGreen", size=12),
          axis.title.y = element_text(colour = "blue", size=12),
          axis.text.x = element_text(size=10),
          axis.text.y = element_text(size=10),
          plot.title = element_text(colour = 'DarkBlue',
                                    size = 20,
                                    family ='Courier',
                                    hjust = 0.5)
    )
}
        

#color coded datatable using 'formatstyle' and adding curreny using 'formayCurrency()' function is used to format all columns of the datatable as currency values.   
        
library(shiny)
library(DT)

ui <- fluidPage(
  dataTableOutput("mytable")
)

server <- function(input, output) {
  output$mytable <- renderDataTable({
    # Example data
    df <- data.frame(
      Column1 = c(-1, 0, 1, 2, -3),
      Column2 = c(5, 10, 8, -2, 4)
    )
    
    datatable(df) %>%
      formatCurrency(
        colnames(df),
        currency = "$",
        interval = 0,
        mark = ","
      )%>%
      formatStyle(
        'Column1',
        color = styleInterval(0, c('red', 'green')),
        fontWeight = styleInterval(0, c('normal', 'bold')))%>%
          formatStyle(
            'Column2',
            color = styleInterval(0, c('red', 'green'))
          
      )
  })
}

shinyApp(ui, server)
       
 
        
 
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
 
