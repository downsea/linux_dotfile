suppressPackageStartupMessages(library("optparse"))
option_list <- list(
        make_option(c("-f", "--file"), default="",
            help="input file path"),
        make_option(c("-n", "--number"), type= "double",
            help="value to pass"),
        make_option(c("--flag"), action="store_true", default=F,
            help="flag to use")
        )
opt <- parse_args(OptionParser(option_list=option_list))

if( file.exists(opt$file)) {
	data.a= read.table(opt$file, sep= "\t", header= TRUE, row.names=1, comment.char = "#", as.is = c(1)) 
}else{
    stop(sprintf("Specified file ( %s ) does not exist", opt$file))
}
file.name<- sub("[.][^.]*$", "", opt$file)
file.out <- paste(file.name, ".out", sep="" )

if(!require(reshape2)){install.packages("reshape2")}
if(!require(ggplot2)){install.packages("ggplot2")}
if(!require(data.table)){install.packages("data.table")}

colIdx= as.character(c("chartreuse4","chartreuse1","brown4","brown3","red","deeppink","pink3","darkkhaki","goldenrod2","yellow",
    "cyan","lightblue3","lightblue4","dodgerblue4","blue","blue4","purple","purple4","darkgoldenrod","darkgoldenrod4"))
colIdx= rep(colIdx, 10)
shape= rep(c(1:25), 10)

## generate pdf
#file.out.pdf <- paste(file.name, ".pdf", sep="" )
#pdf(file=file.out.pdf, width = 8, height = 6,onefile = TRUE,family = "Helvetica",title = file.name, fonts = NULL, version = "1.4",paper = "special")
#dev.off(  )
## ggplot2
#sp <- ggplot(data.a, aes(x, y, colour, shape, group)) +
    #geom_point(aes(shape), size= 5) +
    #geom_line(size=2)+ 
    #labs(title = fn, x= rownames(d)[1], y= "reads coverage", colour ="Samples") + 
    #theme(title= element_text(size = rel(2)), legend.text= element_text(size = rel(1.5)), axis.text= element_text(size = rel(1.5)))+ 
    #scale_shape_manual(name= "Samples", values = shape) +
    #scale_colour_manual(name= "Samples", values = colIdx)
#ggsave(file=file.out, plot= sp, w= 20, h= 10)



file.out <- paste(file.name, ".RData", sep="" )
save.image(file.out)
