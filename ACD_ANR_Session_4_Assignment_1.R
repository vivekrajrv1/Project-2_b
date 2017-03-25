getwd()
# 1.
# a).

x <- c(2:30)
x

# b).
y <- c(30:2)
y

# c).
z <- c(1:30,30:1)
z

# d).
dev <- c(4,6,3)
dev

# e).
a <- c(rep(5:7,10))
a

# f).
b <- c(rep(5:7,10),5)
b

# g).
c <- c(rep(4,10), rep(6,20), rep(3,30))
c

# 3.
x <- sample(0:999, 250, replace=T)
print(x > 500)
set.seed(100)
y <- sample(0:999, 250, replace=T)
y
set.seed(100)
y[1]

for(i in 1:length(y)){
  if(y[i]>500){
    print(y)
  }
  else{
    print("")
  }
}

# 4.

# a).

?paste

paste("Label", 1:30, sep = " ")

# b).

paste("FN", 1:30, sep = "")


# 5.

P <- 10000
R <- 11.5
n <- c(1:15)
amt <- P + P*(1+(R/100)*n)
amt

# 6.

?matrix
v <- c(1:5,101:105,201:205,301:305)
v
matrix(data = v, nrow = 5, ncol = 4, byrow = FALSE)
