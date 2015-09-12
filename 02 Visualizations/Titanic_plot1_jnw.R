require("ggplot2")
require("extrafont")
#need to change so that AGE is not null
ggplot() + 
  coord_cartesian() + 
  scale_x_discrete() +
  scale_y_continuous() +
  labs(title='Titanic') +
  labs(x="Age", y=paste("Fare")) +
  
  #theme(axis.ticks.x=element_blank(), axis.text.x=element_blank()) +
  layer(data=df, 
        mapping=aes(x=AGE, y=as.numeric(as.character(FARE)), color=SEX), 
        stat="identity", 
        stat_params=list(), 
        geom="point",
        geom_params=list(), 
        position=position_jitter(width=0.3, height=0)
  )
