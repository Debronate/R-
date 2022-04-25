true_and_missing <- c(TRUE,NA)#将true_and_missing赋值TRUE和NA
false_and_missing <- c(FALSE,NA)#将false_and_missing赋值FALSE和NA
mixed <- c(TRUE,FALSE,NA)#将mixed赋值TRUE,FALSE和NA
any(true_and_missing)#用any判断true_and_missing
all(true_and_missing)#用all判断true_and_missing
any(false_and_missing)#用any判断false_and_missing
all(false_and_missing)#用all判断false_and_missing
any(mixed)#用any判断mixed
all(mixed)#用all判断mixed