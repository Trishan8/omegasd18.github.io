?pbirthday

N = 0:200
data2 = rep(0, length(N))
data3 = rep(0, length(N))
data4 = rep(0, length(N))
data5 = rep(0, length(N))
data6 = rep(0, length(N))

for(i in N){
    data2[i+1] = pbirthday(i,classes=365,2)
    data3[i+1] = pbirthday(i,classes=365,3)
    data4[i+1] = pbirthday(i,classes=365,4)
    data5[i+1] = pbirthday(i,classes=365,5)
    data6[i+1] = pbirthday(i,classes=365,6)
}

pbirthData = data.frame(N, data2, data3, data4, data5)

library(tidyverse)

colors = c("2"="red",
           "3"="blue",
           "4"="magenta",
           "5"="green")

ggplot(data = pbirthData, mapping = aes(x = N))+
    geom_line(aes(y = data2, color="2"))+
    geom_line(aes(y = data3, color="3"))+
    geom_line(aes(y = data4, color="4"))+
    geom_line(aes(y = data5, color="5"))+
    theme_bw()+
    labs(x = "Number of people",
         y = "Probability of birthdays coinciding",
         color = "Group size")+
    scale_color_manual(values = colors)+
    theme(legend.position = c(.13, .98),
              legend.justification = c("right", "top"),
              legend.box.just = "right",
              legend.margin = margin(6, 10, 6, 6),
              legend.box.background = element_rect(color="black",
                                                   size=1),
              legend.text = element_text(size = 10),
              legend.title = element_text(face = "plain", size = 12))

birthdays <- 1:365
numPeople <- 1:200

maxCoincidence <- function(n){
     return(max(table(sample(birthdays, n, replace=TRUE))))
}

genBirthdayProblem <- function(N,m,iterate){
    p = rep(0,length(N))
    for(n in N){
        p[n] <- mean(replicate(iterate, maxCoincidence(n) >= m))
    }
    return(p)
}

y = genBirthdayProblem(numPeople,2,100)
y
temp <- sum(replicate(100, maxCoincidence(23) >= 2))
temp
