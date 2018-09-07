
sigma <- 1
mu    <- 0

lower.x0 <- -1.8
upper.x0 <-  1.8

lower.x1 <- -4.00
upper.x1 <-  4.00


tiff(file="H:/InnleveringSep2018/PGM Figurer/FgureDensity2018sep05.tif",
     width=12, height=4, units = "in", bg="white", res=500)
par(mfrow=c(1,3))
# 'Riktig' plott
x  <- seq(-4.1, 4.1, by = 0.1)
y  <- ( 1/(sigma * sqrt(2*pi)) ) * ( exp(1)^( (-1 * ((x - mu)^2)) / (2*(sigma^2)) ) )
p1 <- plot(x,y,type="l", lwd=2, col="royalblue3", axes=FALSE, ylab="", xlab="")
title(xlab="Nominal test level correct", mgp=c(1,1,0), cex.lab=1.5)

x=seq(lower.x0, upper.x0, by = 0.1)
y  <- ( 1/(sigma * sqrt(2*pi)) ) * ( exp(1)^( (-1 * ((x - mu)^2)) / (2*(sigma^2)) ) )
polygon(c(lower.x0,x,upper.x0), c(0,y,0), col="gray90")

x=seq(lower.x1, lower.x0, by = 0.1)
y  <- ( 1/(sigma * sqrt(2*pi)) ) * ( exp(1)^( (-1 * ((x - mu)^2)) / (2*(sigma^2)) ) )
polygon(c(lower.x1,x,lower.x0), c(0,y,0), col="turquoise1")

x=seq(upper.x0, upper.x1, by = 0.1)
y  <- ( 1/(sigma * sqrt(2*pi)) ) * ( exp(1)^( (-1 * ((x - mu)^2)) / (2*(sigma^2)) ) )
polygon(c(upper.x0, x, upper.x1), c(0,y,0), col="royalblue3")


abline(v=lower.x0, col="black", lwd=3)
abline(v=upper.x0, col="black", lwd=3)

text(x=-4.25,y=0.16, col="black", label="True low", adj=0, cex=1.5)
text(x=-4.25,y=0.13, col="black", label="mortality", adj=0, cex=1.5)
text(x=-4.25,y=0.10, col="black", label="hospitals", adj=0, cex=1.5)

text(x=2.05, y=0.16, col="black", label="True high", adj=0, cex=1.5)
text(x=2.05, y=0.13, col="black", label="mortality", adj=0, cex=1.5)
text(x=2.05, y=0.10, col="black", label="hospitals", adj=0, cex=1.5)

text(x=0, y=0.16,    col="black", label="True", cex=1.5)
text(x=0, y=0.13,    col="black", label="non-outlier", cex=1.5)
text(x=0, y=0.10,    col="black", label="hospitals", cex=1.5)

mtext(text="Limit low mortality",  side=3, adj=0.1, cex=1.0)
mtext(text="Limit high mortality", side=3, adj=0.9, cex=1.0)


# For få non-outliers, for mange high and low mortlaity outliers
x  <- seq(-4.1, 4.1, by = 0.1)
y  <- ( 1/(sigma * sqrt(2*pi)) ) * ( exp(1)^( (-1 * ((x - mu)^2)) / (2*(sigma^2)) ) )
p2 <- plot(x,y,type="l", lwd=2, col="blue", axes=FALSE,  ylab="", xlab="")
title(xlab="Nominal test level incorrect, too many outliers", mgp=c(1,1,0), cex.lab=1.5)

x=seq(lower.x0, upper.x0, by = 0.1)
y  <- ( 1/(sigma * sqrt(2*pi)) ) * ( exp(1)^( (-1 * ((x - mu)^2)) / (2*(sigma^2)) ) )
polygon(c(lower.x0,x,upper.x0), c(0,y,0), col="gray90")

x=seq(lower.x1, lower.x0, by = 0.1)
y  <- ( 1/(sigma * sqrt(2*pi)) ) * ( exp(1)^( (-1 * ((x - mu)^2)) / (2*(sigma^2)) ) )
polygon(c(lower.x1,x,lower.x0), c(0,y,0), col="turquoise1")

x=seq(upper.x0, upper.x1, by = 0.1)
y  <- ( 1/(sigma * sqrt(2*pi)) ) * ( exp(1)^( (-1 * ((x - mu)^2)) / (2*(sigma^2)) ) )
polygon(c(upper.x0, x, upper.x1), c(0,y,0), col="royalblue3")

abline(v=lower.x0+0.35, col="black", lwd=3)
abline(v=upper.x0-0.35, col="black", lwd=3)

text(x=-4.2,y=0.16, col="black", label="Non-outlier", adj=0, cex=1.5)
text(x=-4.2,y=0.13, col="black", label="and low", adj=0, cex=1.5)
text(x=-4.2,y=0.10,  col="black", label="mortality", adj=0, cex=1.5)
text(x=-4.2,y=0.07,  col="black", label="hospitals", adj=0, cex=1.5)
text(x=2.0, y=0.16, col="black", label="Non-outlier", adj=0, cex=1.5)
text(x=2.0, y=0.13, col="black", label="and high", adj=0, cex=1.5)
text(x=2.0, y=0.10,  col="black", label="mortality", adj=0, cex=1.5)
text(x=2.0, y=0.07,  col="black", label="hospitals", adj=0, cex=1.5)
text(x=0, y=0.16, col="black", label="Too few", cex=1.5)
text(x=0, y=0.13,  col="black", label="non-outlier", cex=1.5)
text(x=0, y=0.10,  col="black", label="hospitals", cex=1.5)

mtext(text="Limit low mortality", side=3, adj=0.1, cex=1.0)
mtext(text="Limit high mortality", side=3, adj=0.9, cex=1.0)


# For mange non-outliers, for mange high and low mortlaity outliers
x  <- seq(-4.1, 4.1, by = 0.1)
y  <- ( 1/(sigma * sqrt(2*pi)) ) * ( exp(1)^( (-1 * ((x - mu)^2)) / (2*(sigma^2)) ) )
p3 <- plot(x,y,type="l", lwd=2, col="blue", axes=FALSE, ylab="", xlab="")
title(xlab="Nominal test level incorrect, too few outliers", mgp=c(1,1,0), cex.lab=1.5)
x=seq(lower.x0, upper.x0, by = 0.1)
y  <- ( 1/(sigma * sqrt(2*pi)) ) * ( exp(1)^( (-1 * ((x - mu)^2)) / (2*(sigma^2)) ) )
polygon(c(lower.x0,x,upper.x0), c(0,y,0), col="gray95")

x=seq(lower.x1, lower.x0, by = 0.1)
y  <- ( 1/(sigma * sqrt(2*pi)) ) * ( exp(1)^( (-1 * ((x - mu)^2)) / (2*(sigma^2)) ) )
polygon(c(lower.x1,x,lower.x0), c(0,y,0), col="lightblue")

x=seq(upper.x0, upper.x1, by = 0.1)
y  <- ( 1/(sigma * sqrt(2*pi)) ) * ( exp(1)^( (-1 * ((x - mu)^2)) / (2*(sigma^2)) ) )
polygon(c(upper.x0, x, upper.x1), c(0,y,0), col="royalblue3")

abline(v=lower.x0-0.35, col="black", lwd=3)
abline(v=upper.x0+0.35, col="black", lwd=3)

text(x=-4.1, y=0.16, col="black", label="Too few", adj=0, cex=1.5)
text(x=-4.1, y=0.13,  col="black", label="low", adj=0, cex=1.5)
text(x=-4.1, y=0.10,  col="black", label="mortality", adj=0, cex=1.5)
text(x=-4.1, y=0.07,  col="black", label="hospitals", adj=0, cex=1.5)
text(x=2.35, y=0.16, col="black", label="Too few", adj=0, cex=1.5)
text(x=2.35, y=0.13,  col="black", label="high", adj=0, cex=1.5)
text(x=2.35, y=0.10,  col="black", label="mortality", adj=0, cex=1.5)
text(x=2.35, y=0.07,  col="black", label="hospitals", adj=0, cex=1.5)
text(x=0, y=0.16, col="black", label="Non-outlier,", cex=1.5)
text(x=0, y=0.13,  col="black", label="low and", cex=1.5)
text(x=0, y=0.10,  col="black", label="high mortality", cex=1.5)
text(x=0, y=0.07,  col="black", label="hospitals", cex=1.5)

#text(x=lower.x0-0.35, y=1.5,  col="black", label="Limit low mortality", cex=1.5)
mtext(text="Limit low mortality", side=3, adj=0, cex=1.0)
mtext(text="Limit high mortality", side=3, adj=0.9, cex=1.0)

dev.off()
