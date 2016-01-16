library(mosaic)
library(mosaicData)

qplot(salary, sat, data=SAT)

qplot(salary, sat, data=SAT, geom=c("point", "smooth"), method="lm", se=FALSE)


SAT$fracgrp = cut(SAT$frac, breaks=c(0, 22, 49, 81), 
                  labels=c("low", "medium", "high"))

qplot(salary, sat, color=fracgrp, data=SAT)

qplot(salary, sat, color=fracgrp, facets=.~fracgrp, data=SAT)

qplot(salary, sat, color=fracgrp, facets=.~fracgrp, data=SAT,  geom=c("point", "smooth"), method="lm", se=FALSE)

qplot(salary, frac, data=SAT)
qplot(salary, sat, data=SAT)
qplot(frac, sat, data=SAT)

qplot(expend, sat, data=SAT)
qplot(expend, sat, data=SAT,  geom=c("point", "smooth"), method="lm", se=FALSE)

qplot(ratio, sat, data=SAT)
qplot(ratio, sat, data=SAT,  geom=c("point", "smooth"), method="lm", se=FALSE)

ggplot(SAT, aes(x=salary, y=sat)) +
    geom_smooth(aes(color=fracgrp), method="lm", se=FALSE) +
    geom_point(aes(color=fracgrp)) +
    geom_smooth(method="lm", se=FALSE, color="gray", linetype=2) + 
    xlab("estimated average public school teacher salary") + 
    ylab("average total SAT score, by state")+
    scale_color_discrete("% students\ntaking SAT")

