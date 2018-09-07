
# Define a function to calculate the law of large numbers
lawOfLargeNumbers <- function(N) {
  
  counter <- 0
  for (i in rnorm(N)){
    if (i < 1 && i > -1 ){
      counter <- counter + 1
    }
    
  }
  
  answer <- counter/N

  return(answer)
  
}


#Looping through the function to the the plot for the law of large numbers
n <- 10000

answer_list = c()

for (i in 1:n){
  if (i %% 10 == 0){
    print(i)
    answer_list <- c(answer_list,c(lawOfLargeNumbers((n))))
  }
  
}

#Plotting the graph
plot(x=c(1:length(answer_list)),y=answer_list, ylim=c(0.4,0.8))

print(answer_list[length(answer_list)])
