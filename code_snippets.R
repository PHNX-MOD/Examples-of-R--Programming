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

for(n in len(vec){  #forloop with length of the vec in consid
  vec1[n]
}
