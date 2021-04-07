# LEX18

## Overview
In this lab exercise you will first familiarize yourself with the given code (by tracking down some bugs engineered into the code) and then use gprof and gcov to gain insight into some performance problems.

## Part one: Bug hunt
1) make andRunTests

All the tests should pass.  They do not.  There is a segmentation fault when you try to run the tests.  I have created four bugs in the code.  Document what you did to track down each of the bugs in [the LEX18 response form](https://docs.google.com/forms/d/e/1FAIpQLSfxkNOD820aY_FuYsKFcUMYGvNMWE2sOo-MI0O41N5h5Xc0Zg/viewform?usp=sf_link).  You may NOT edit tests.c to address any of these issues.


## Part two: Performance and coverage

2) make andRunPerformance

Before doing this you must edit the makefile so that the gprof invocation is complete.

Once you have the code running correctly look at the gcov and gprof data.  Write below what they show about any performance bottleneck, and suggest ways in which the performance of the code could be improved.  YOU ARE NOT EXPECTED TO IMPLEMENT THESE IMPROVEMENTS - JUST DESCRIBE THEM in the same Google form referenced above.

## Finishing up

Open [the LEX 18 feedback form](https://docs.google.com/forms/d/e/1FAIpQLSd1Lq_Hs7kaqWMUAa_nI0Bh9_rbmzZeScBHrdRe7zgBfjt7tA/viewform?usp=sf_link) and give your thoughts on this lab exercise.
