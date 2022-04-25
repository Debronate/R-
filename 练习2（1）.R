x <- c(1:1000)#给变量x分配1到1000的数字向量
atan(1/x)#计算x的倒数的反正切值
y <- atan(1/x)#将上述值分配给变量y
1/tan(y)#计算y的切线的倒数
z <- 1/tan(y)#把值赋给变量z
x == z#用==比较x和z
identical(x,z)#用identical比较x，z变量
all.equal(x,z)#用all.equal比较x,z变量
isTRUE(all.equal(x,z))#用isTRUE函数判断T&F
all.equal(x,z,tolerance = 0)#将容差设置为0
