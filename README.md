# This folder is for good/bad pot filter codes, clone it if you want to use.

First, run tag.m in matlab to add labels to your train&test sets, it will create a txt including your file names and labels(1 for good and 2 for bad)


Sencond, use change_size.py to standardize your pics into a same size so that our model can recognize and train them in a good batch size. Your size of pics shouldn't be too big (recommand 128*128).
#Too small may make your accuracy lower and too big size will take more time tfor model training.


Third, run hog_svm.py to use hog_svm model to train and test;
or you can run train.py and test.py to use ML model based on tensorflow to do the training and testing.
# It will be better if you got a TPU because both of two models need great computing resource as well as RAM.
