#问题3-1，数字的三个内置类的名称是什么？浮点值numeric、整数integer、复数complex
#问题3-2，用什么函数查找了因子的水平值？
#as.integer()   括号中加factor
#问题3-3，如何把字符串“6.283185”转换为数字？
#as.numeric(factor)
#问题3-4，指出至少三个用于检视变量内容的函数
#is.character()     is,logical()        is.list()      is.factor()   
#class()      mode()      typeof()   summary()   head()
#问题3-5，如何删除用户工作区中的所有变量？
#rm( list = Is() )
#练习3-1，查找以下值Inf、NA、NaN和""的类、类型、模式及存储模式。
class(Inf)
class(NA)
class(NaN)
class("")#查找类
typeof(Inf)
typeof(NA)
typeof(NaN)
typeof("")#查找类型
mode(Inf)
mode(NA)
mode(NaN)
mode("")#查找模式
storage.mode(Inf)
storage.mode(NA)
storage.mode(NaN)
storage.mode("")#查找储存模式

#练习3-2，随机从“dog”、“cat”、“dolphin”、“hamster”和“goldfish”中以相等的概率生成100个宠物名。显示所得变量的前几个值，并计算每种宠物的数量。
petname=c("dog","cat","dolphin","hamster","goldfish")
fac<-factor(sample(petname[1:5],100,replace=TRUE))
list(fac)
summary(fac)
#练习3-3，创建一些以 水果命名的变量。列出用户工作区中所有包含字母“a”的变量
fruits=c("apple","strawberry","blueberry","bayberry","raspberry")
subset(fruits,grepl("a",fruits))#改了题目

caomei <- 1
peach <- "fruit"
pear <- TRUE
ls(pattern="a")#没改题目

#问题4-1，你将如何创建一个包含值0、0.25、0.5、0.75、1和1.25的向量？
xiangliang <- c(0,0.25,0.5,0.75,1,1.25)

#问题4-2，描述两种命名向量元素的方式。
c(lala=1,alal=2)#直接命名
#names（）函数
lalala <- c(4:9)
xiangliang <- c("0","0.25","0.5","0.75","1","1.25")
names(lalala) <- c("0","0.25","0.5","0.75","1","1.25")#尝试1，可以

x <- 4:9
xiangliang <- c(4,5,6,7,8,9)
names(xiangliang)<-c("0","0.25","0.5","0.75","1","1.25")#尝试2，可以


#问题4-3，向量索引中的四种类型是什么？
b <- (1,2,3,4)#给向量输入正数（第一个位置是1）
x[c(1)]
x[c(-1)]#给向量输入负数
x[c(TRUE,TRUE,TRUE,FALSE)]#给向量输入逻辑值
xiangliang[c("1")]#对于已命名的向量，给向量传入命名的字符向量


#问题4-4，一个3×4×6的数组的长度是多少？
#72

#问题4-5，你会用哪个操作符来执行两个矩阵的内积？
#%*%
  #问题4
  # 创建 一个从 11 到 50 ，步长 为3的 向量, , 再将向量减去向量 c(2,3)?
yigexiangliang <- seq.int(11,50,3)
print(yigexiangliang)
c(yigexiangliang)-c(2,3)

#）  创建 一个从 1.1 到4 4 ，步长为 20 的向量，再将向量乘向量 c(4,5,8, , 9)
yige <- seq.int(1.1,4,20)
print(yige)
c(yige)*c(4,5,8,9)

#计算 c(1,2,4 ， 6) 和 c(8,0, ,- -1 1 ，- - 4) 的加减乘除后的 结果？
c(1,2,4,6)+c(8,0,-1,-4)
c(1,2,4,6)-c(8,0,-1,-4)
c(1,2,4,6)*c(8,0,-1,-4)
c(1,2,4,6)/c(8,0,-1,-4)
# c(1,2,4,6)+c(8,0,-1,-4)
#[1] 9 2 3 2
#c(1,2,4,6)-c(8,0,-1,-4)
#[1] -7  2  5 10
#c(1,2,4,6)*c(8,0,-1,-4)
#[1]   8   0  -4 -24
#c(1,2,4,6)/c(8,0,-1,-4)
#[1]  0.125    Inf -4.000 -1.500

#练习4-1，第n个三角形数表示为n * (n + 1) / 2。创建一个包含前50个三角形数的序列。R有一个内置常数letters，它包含小写的罗马字母。使用前15个英文字母来给你刚刚创建的向量命名。选择命名为元音的三角数。
 n <- 1:50
sanjiaoxing <- c(n*(n+1)/2)
minggeming <- letters[1:15]
names(sanjiaoxing) <-minggeming
sanjiaoxing[c("a","e","i","o")]
#结果a   e   i   o 
#1	15  45 120
#练习4-2，diag函数有几种用途，其中之一是以输入向量作为对角线来创建一个方阵。使用序列10到0到11（即11,10,...,1,0,1,...,11）创建一个21×21的矩阵
duijiaoxian <- c(10:0,1:11)
diag(duijiaoxian)
#问题5-1以下列表的长度是多少？
list(alpha = 1, list(beta = 2, gamma = 3, delta = 4), eta = NULL)
length(list(alpha = 1, list(beta = 2, gamma = 3, delta = 4), eta = NULL))
3

#问题5-2你会在哪里找到成对列表？
#使用formals函数时
#问题5-3尽可能多地说出的几种创建数据框子集的方法。
#data.frame()把多个向量建成一个数据框，把矩阵matrix转换为数据框
# 问题5-4如何创建一个数据框，使得它的列名既非唯一又非有效？
#给data.frame传入check.names= FALSE关闭
# 问题5-5你会使用哪个函数将一个数据框追加到另一个之后？
#merge(),c(),rbind(),cbind()函数可以合并
#问题7
#练习5-1，创建一个列表变量，它的第一个元素包含所有从0到9的平方数，第二个元素为10至19之内的所有平方数，依此类推，最后一个元素为90到99之内的平方数。不是平方数的元素也应该被包含在内
aaa <- 0:99
sqrt_aaa<- sqrt(aaa)
is_square_number <- sqrt_aaa == floor(sqrt_aaa)
square_numbers <- aaa[is_square_number]
groups <- cut(
  square_numbers,
  seq.int(0,100,10),
  include.lowest = TRUE,
  right = FALSE)
split(square_numbers,groups)
#练习5-2，R有几个内置的数据集，其中包括由安德森和费舍尔在20世纪30年代收集和分析的iris（指鸢尾花，而不是虹膜）数据。输入iris即可看到数据集。创建一个新的数据框，它由iris数据集的数值列组成；计算各列的平均值
one <- iris[,1]
two <- iris[,2]
three <- iris[,3]
four <- iris[,4]
X=data.frame(one,two,three,four)
colMeans(X , na.rm = TRUE)
#练习5-3，beaver1和beaver2数据集包含两个海狸的体温数据。为beaver1数据集添加一列名为id的列，其值全部为1。同样，也为beaver2添加一个id列，值全为2。垂直拼接两个数据框，并且找到所有活跃着的海狸的子集
id <- rep(1,each=114)
new_beaver1 <- data.frame(beaver1,id)
id <- rep(2,each=100)
new_beaver2 <- data.frame(beaver2,id)
new_beaver <- rbind(new_beaver1,new_beaver2)
act_beaver <- new_beaver[activ==1]#好像有点问题?

