install.packages("tm")
require("tm")

kshingle<-function(){
  k<- as.integer(readline("Enter a value for k - 1"))
  
  u1<- readLines("C:/Users/micha/Desktop/Sem 2 Practicals/BIBD/Practical 1/inputfiles/InputFile.txt")
  
  shingle<-i<-0
  while(i<nchar(u1)-k+1)
  {
    shingle[i]<-substr(u1,i,i+k)
    print(shingle[i])
    
    i<-i+1
  }
}

if(interactive())kshingle()
