L2.norm <- function(x){
	return(sqrt(x%*%x))
}

d2s <- function(mat){
	mat.cond <- sweep(mat,MARGIN=1,apply(mat,1,sum),"/")
	L2 <- as.matrix(dist(mat.cond))
	margin.norm <- apply(mat.cond,1,L2.norm)
	diff.norm <- outer(margin.norm,margin.norm,"-")
	return(L2^2-diff.norm^2)
}

SMILE <- function(x,plot=TRUE){
	MatDis <- d2s(x)
	hc <- hclust(as.dist(MatDis),method="single")
	if (plot){
		plot(hc,hang=-1,main="Clustering with SMILE",sub="",xlab="")
		rect.hclust(hc,k=2,border=c(1,2))
	} 
	class <- 
cutree(hc,k=2)
	sel.b <- which.min(table(class))
	w <- which(class==sel.b)
	ind.sel <- names(class[w])
	MatDis <- as.dist(MatDis)
	return(list(selected=ind.sel,hc=hc,d2s=MatDis))
}