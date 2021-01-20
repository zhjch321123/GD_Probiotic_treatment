#!/usr/bin/Rscript
setwd("C:/Users/zhjch/Desktop")
con <- file("123.txt","r")
line<-readLines(con,n=1)
line<-unlist(strsplit(line,"\t"))
result<-data.frame()
number<-length(line)
sink("p_value.txt",append=TRUE)
while( length(line) != 0 ) {
    line<-unlist(strsplit(line,"\t"))
    result[1,1]<-line[1]
    result[1,2]<-wilcox.test(as.numeric(line[2:9]),as.numeric(line[10:17]),paired = TRUE,correct=FALSE)$p.value
    #result[1,2]<-wilcox.test(as.numeric(line[2:20]),as.numeric(line[22:40]),paired = TRUE,correct=FALSE)$p.value
    #cat("\t")
    write.table(result,sep="\t",quote=FALSE,row.names=F,col.names=F)
    line=readLines(con,n=1)
}
close(con)
sink()

