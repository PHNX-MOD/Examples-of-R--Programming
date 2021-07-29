number_of_n_numbers <- readline(prompt = "enter the number of N numbers");
number_of_n_numbers <- as.numeric(number_of_n_numbers);
number_of_n_numbers
rm(random_numbers)
rm(number_of_n_numbers)
random_numbers <- rnorm(number_of_n_numbers)
count_between_one_and_minus_one <- 0
for( numbers in random_numbers){
 if((numbers <1)&(numbers >-1)){
   count_between_one_and_minus_one = count_between_one_and_minus_one +1
 }
}
e_of_x <- count_between_one_and_minus_one / 100
e_of_x
 
