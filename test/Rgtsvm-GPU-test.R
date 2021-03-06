
load("training_x_y.RData");

library(Rgtsvm);
gt.train1   <- svm( training_x_y[,-c(121)], training_x_y[,121], gamma=0.00833, type="eps-regression", scale=TRUE, fitted=FALSE);

ptm <- proc.time();
gt.test1    <- predict(gt.train1, training_x_y[,-c(121)] );
t.elapsed <- proc.time() - ptm;
show(t.elapsed);

if(0)
{
library(e1071);
ptm <- proc.time();
svm.train   <- svm( training_x_y[,-c(121)], training_x_y[,121], gamma=0.00833, type="eps-regression", scale=TRUE, fitted=FALSE);
t.elapsed <- proc.time() - ptm;
show(t.elapsed);


ptm <- proc.time();
svm.pred   <- predict( svm.train, training_x_y[,-c(121)] );
t.elapsed <- proc.time() - ptm;
show(t.elapsed);

}

library(Rgtsvm);

load("ELF1_trainData.rdata");
gt.train2   <- svm(trainAll, trainAllStatus,  type="C-classification", scale=TRUE, fitted=FALSE);

ptm <- proc.time();
gt.test2    <- predict(gt.train2, trainAll );
t.elapsed <- proc.time() - ptm;
show(t.elapsed);

if(0)
{
library(e1071);
ptm <- proc.time();
svm.train   <- svm(trainAll, trainAllStatus, type="C-classification", scale=TRUE, fitted=FALSE);
t.elapsed <- proc.time() - ptm;
show(t.                