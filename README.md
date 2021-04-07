# LEX20

## Overview
In this lab exercise you will first familiarize yourself with the given code (by tracking down some bugs engineered into the code) and then use gprof and gcov to gain insight into some performance problems.

## Part one: Bug hunt
1) make andRunTests

All the tests should pass.  They do not.  There is a segmentation fault when you try to run the tests.  I have created four bugs.  Document what you did to track down and fix each of the bugs in [the LEX20 response form](https://docs.google.com/forms/d/e/1FAIpQLSelG4SCuach8ECeH76aNZHUK-LMm_Q3n80clf72QKt8Jr6xJQ/viewform?usp=sf_link).  You may NOT edit tests.c to address any of these issues.


## Part two: Performance and coverage

2) make andRunPerformance

Before doing this you must edit the makefile so that the gprof invocation is complete.  Find the "fix" line in the makefile, and consult either the manual page for gprof on timberlake or the [on-line gprof version 2.27 documentation](https://sourceware.org/binutils/docs-2.27/gprof/index.html) to help.  If you run into problems post a question in Piazza.

Once you have the code running correctly look at the gcov and gprof data.  Write below what they show about any performance bottleneck, and suggest ways in which the performance of the code could be improved.  YOU ARE NOT EXPECTED TO IMPLEMENT THESE IMPROVEMENTS - JUST DESCRIBE THEM in the same Google form referenced above.

## Finishing up

Open [the LEX 20 feedback form](https://docs.google.com/forms/d/e/1FAIpQLSc2zUKT863BQd2_szdZwfP5IPDqjPuA1I38vgwgEgcP5I9PDw/viewform?usp=sf_link) and give your thoughts on this lab exercise.
