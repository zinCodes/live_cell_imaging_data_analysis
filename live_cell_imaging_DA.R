data_p <- filter(new_p, grepl("[A-P]\\d{0-1}[12345678]$", op))
View(data_p)
data_d <- filter(new_p,  grepl("[A-P]9|[A-P]1[0123456]$", op))
> View(data_d)
data_g <- filter(new_p, grepl("[A-P]1[789]|[A-P]2[01234]$", op))
> View(data_g)
data_p[,2] <- as.numeric(as.character(data_p[,2]))
sum(data_p$Cells > 0)
[1] 127
> data_g[,2] <- as.numeric(as.character(data_g[,2]))
> data_d[,2] <- as.numeric(as.character(data_d[,2]))
> sum(data_g$Cells > 0)
[1] 76
> sum(data_d$Cells > 0)
[1] 108
nrow(data_p)
[1] 127
> nrow(data_d)
[1] 128
> nrow(data_g)
[1] 128
mylist <- list(data_p, data_d, data_g)
> max.rows <- max(nrow(data_p), nrow(data_d), nrow(data_g))
new_mylist <- lapply(mylist, function(x) { x[1:max.rows, ] })
View(new_mylist)
class(new_mylist
      + )
[1] "list"
> o <- as.matrix(new_mylist)
> class(o)
1] "matrix"
> View(o)
> o <- as.data.frame(new_mylist)
> class(o)
[1] "data.frame"
row.names(o) <- 1:128
xu <- setNames(o, c("32 cells", "Result", "16 cells", "Result", "4 cells", "Result"))
sapply(xu, function(x) {sum(x >0)})
sapply(xu, function(x) {(sum(x >0)/nrow(xu))*100})

begin:
  new_p <- p[-c(1:2), c(11, 12)]
new_p <- as.data.frame(new_p)
require(data.table)
setnames(new_p, old=c("11", "12"), new=c("Well_ID", "Result"))
rownames(new_p) <- 1:nrow(new_p)
alo <- full_join(new_p1, p10, by="Well_ID")
Data2
p10 <- t(pci6a_day10)
> View(p10)
> p10 <- p10[,c(15,16)]
> View(p10)
> p10 <- p10[-c(1:2),]
> View(p10)
> library(data.table)	
sum(alo$Cells.x == 15 & as.numeric(alo$Cells.y >= 0), na.rm=T) #(did not work though)
length(which(alo$Cells.x==11 & alo$Cells.y >0)) #(did not work)
sum(as.numeric(alo$Cells.x) == 15 & as.numeric(alo$Cells.y) > 0) (works!!)
count(alo$Cells.x == 21 & alo$Cells.y >0)

