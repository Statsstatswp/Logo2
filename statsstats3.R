#Code for STATSSTATS Logo
#This is cropped on the website
#William Tyler Bradley
#--------------------#

#Found the colors from the design set-up page
#help(rgb)
col2rgb(col="#e2d000")
#226, 208, 0
col2rgb(col="#81d742")
#129,215,66

#Will make a jpg
#Height was the recommended size, but was then increased for clarity
jpeg(file="statsstats.jpg",height=1500,width=1500)

#No margins
par(mar=c(0,0,0,0))

#Blank plot
plot(0, 0, type="l",axes=F, xlab="", ylab="",xlim=c(-4,4),ylim=c(-4,4),asp=1)

#Coordinates for the circles
theta <- seq(0,2*pi, length=400)
x1 <- 2*cos(theta)+1.25
y1 <- 2*sin(theta)
x2 <- 2*cos(theta)+-1.25
y2 <- 2*sin(theta)

#Backgrounds
polygon(x1,y1, col=rgb(226, 208, 0, 150, max=255),lwd=2,border=rgb(226, 208, 0, max=255))
polygon(x2,y2, col=rgb(129, 215, 66, 150, max=255),lwd=2,border=rgb(129, 215, 66, max=255)) 
polygon(x1,y1, col=rgb(226, 208, 0, 50, max=255),lwd=2,border=rgb(226, 208, 0, max=255))

#Hatching
polygon(x1,y1, col=rgb(226, 208, 0,max=255),density=10,lwd=2)
polygon(x2,y2, col=rgb(129, 215, 66, max=255),density=10,angle=-45,lwd=2) 
polygon(x1,y1, col=rgb(226, 208, 0,max=255),density=5,lwd=2)

#Outlines
polygon(x1,y1, border=rgb(226, 208, 0,max=255),lwd=5)
polygon(x2,y2, border=rgb(129, 215, 66, max=255),lwd=5)

#Text
text(1.75,0,"Data",cex=5)
text(-1.75,0,"Code",cex=5)

#Final border/box
polygon(c(3.75,3.75,-3.75,-3.75),c(-2.5,2.5,2.5,-2.5),lwd=5)

#End
dev.off()



