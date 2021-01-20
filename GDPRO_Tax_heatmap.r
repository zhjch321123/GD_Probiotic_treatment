#ISP项目ME热图
setwd("C:/Users/zhjch/Desktop")
library(pheatmap)
all<-read.table("123.txt",header=TRUE,sep="\t",row.names=1)
colgroup=read.table("colgroup.txt",header=TRUE,sep="\t",row.names=1)
#rowgroup=read.table("rowgroup.txt",header=TRUE,sep="\t",row.names=1)
colnames(colgroup)=c("Model")

GA#
pheatmap(all,annotation_col = colgroup,gaps_col = c(9, 17),gaps_row = c(6),cellwidth=2,cluster_col = FALSE,cluster_rows = FALSE,cellheight=6,fontsize_row=6,fontsize_col=2,color = colorRampPalette(c("grey93", "dodgerblue4"))(10), filename="dif_species7.pdf")

GB#
pheatmap(all,annotation_col = colgroup,gaps_col = c(9, 18),gaps_row = c(6),cellwidth=2,cluster_col = FALSE,cluster_rows = FALSE,cellheight=6,fontsize_row=6,fontsize_col=2,color = colorRampPalette(c("grey93", "dodgerblue4"))(10), filename="dif_species7.pdf")

GC#
pheatmap(all,annotation_col = colgroup,gaps_col = c(10, 20),gaps_row = c(6),cellwidth=2,cluster_col = FALSE,cluster_rows = FALSE,cellheight=6,fontsize_row=6,fontsize_col=2,color = colorRampPalette(c("grey93", "dodgerblue4"))(10), filename="dif_species7.pdf")

GD#
pheatmap(all,annotation_col = colgroup,gaps_col = c(8, 16),gaps_row = c(5),cellwidth=2,cluster_col = FALSE,cluster_rows = FALSE,cellheight=6,fontsize_row=6,fontsize_col=2,color = colorRampPalette(c("grey93", "dodgerblue4"))(10), filename="GD_dif_species.pdf")

