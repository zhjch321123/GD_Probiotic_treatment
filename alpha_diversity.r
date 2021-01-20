setwd("C:/Users/zhjch/Desktop")
library(vegan)
#行为taxnomy 列为样品
otu <- read.delim('123.txt', row.names = 1, sep = '\t', stringsAsFactors = FALSE, check.names = FALSE)
otu <- t(otu)

shannon_index <- diversity(otu, index = 'shannon', base = exp(1))

gini_simpson_index <- diversity(otu, index = 'simpson')

write.csv(shannon_index, 'shannon.csv', quote = FALSE)

write.csv(gini_simpson_index, 'simpon.csv', quote = FALSE)
