#Read in the .csv and transform back into 3d array for use in geomorph analysis
#geomorph and stringr libraries are required
library(geomorph)
library(stringr)
LM.sLM.2DArray=read.csv("E:/SharedData/CC_Mice/Feb09_LandmarkArray.csv",stringsAsFactors=FALSE,row.names=1)
LM.sLM.Array=arrayspecs(LM.sLM.2DArray,p=170,k=3)

#Define rownames and colnames for the LM.sLM.Array
LM.sLM.Xrownames=colnames(LM.sLM.2DArray)[seq(from=3,to=ncol(LM.sLM.2DArray),by=3)]
LM.sLM.rownames=str_extract(LM.sLM.Xrownames,"\\w{2}\\.\\d{1,2}")
LM.sLM.colnames=c("X","Y","Z")
LM.sLM.Znames=dimnames(LM.sLM.Array)[[3]]

#Apply the dimension names to the Array
dimnames(LM.sLM.Array)=list(LM.sLM.rownames,LM.sLM.colnames,LM.sLM.Znames)


#-------------
#use this to figure out which positions the landmarks are in 
which(LM.sLM.rownames=="IT.13")

#abind(cc0593.outputfile, cc0595.outputfile, cc0596.outputfile, cc0597.outputfile, cc0598.outputfile)
#define.sliders

#define.sliders
#points

#define rSM: LM.1-LM.3  
define.sliders(1:14) #LM.1 is position 1, position 14 is LM.3

#define lSM: LM.9-LM.11
define.sliders(15:28) #LM.9 is position 15, LM.11 is position 28

#define rIM: LM.2-LM.4
define.sliders(29:48) #LM.2 is position 29, LM.4 is position 48


#define lIM: LM.10-LM.12
define.sliders(49:68) #LM10 is position 49, LM12 is position 68


#define rSZ: LM.3-LM.5
define.sliders(c(14,69:84)) #have to use "c" ; also have to define the 14th position (position 14 is lm 3, BUT lm 3 does not appear more than once anymore) position 69 is the first rSZ landmark (SZ.1) and position 84 is LM.5


#define lSZ: LM.11-LM.13
define.sliders(c(28,85:100)) #LM.11 doesn't repeat anymore, it is position 28; LM.13 is position 100, SZ.16 is position 85

#define rIZ: LM.4-LM.6
define.sliders(c(48,101:112)) #LM.4 doesn't repeat anymore, it is position 48; LM.6 is position 112, IZ.1 is position 101

#define lIZ: LM.12-LM.14
define.sliders(c(68,113:124)) #LM.12 doesn't repeat anymore, it is position 68; LM.14 is position 124, IZ.12 is position 113

#define rST: LM.5-LM.7
define.sliders(c(84,134:125)) #LM.5 doesn't repeat anymore, is position 84; LM.7 is position 134, ST.1 is position 125

#define lST: LM.13-LM.15
define.sliders(c(100,135:144)) #LM.13 doesn't repeat anymore, it is position 100; LM.15 is position 144, ST.10 is position 135

#define rIT: LM.6-LM.8
define.sliders(c(112,154:157)) #LM.6 doesn't repeat anymore, it is position 112; LM.8 is position 157, IT.1 is position 145

#define lIT: LM.14-LM.16
define.sliders(c(124,158:170)) #LM.14 doesn't repeat anymore, it is position 124; LM.16 is position 170, IT.13 is position 158

FinalRbind=rbind(define.sliders(1:14),define.sliders(15:28),define.sliders(29:48))





c(1,2:13,14)
R.SZ.sliders=define.sliders(c(14,69:84))
c