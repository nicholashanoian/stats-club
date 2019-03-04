library(tidyverse)

## initialize data frame
dists <- data.frame(x=c(), deg=c(), chisq=c())

## build distribution data 
for (deg in 1:10) {
    new <- data.frame(x=seq(from=0, to=20, by=0.01), deg=deg)
    new <- new %>% mutate(dist=dchisq(x,df=deg))
    dists <- rbind(dists, new)
}
dists <- dists %>% mutate(deg=factor(deg))

## plot
p <- ggplot(dists, aes(x=x, y=dist, color=deg)) +
    geom_line(size=1.5) +
    ylim(0,0.3) +
    theme_void() +
    guides(color=FALSE)

## save long format
p
ggsave("logo-long.png", width=8,height=4, bg="transparent")

## save square format
p + xlim(0,10)
ggsave("logo-sq.png", width=4,height=4, bg="transparent")

