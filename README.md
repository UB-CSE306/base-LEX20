# LEX20

## Overview
In this lab exercise you will first familiarize yourself with the given code (by tracking down some bugs engineered into the code) and then use gprof and gcov to gain insight into some performance problems.

## Part one: Bug hunt
1) make andRunTests

All the tests should pass.  They do not.  There is a segmentation fault when you try to run the tests.  I have created four bugs.  Document what you did to track down and fix each of the bugs in [the LEX20 response form](https://forms.office.com/Pages/ResponsePage.aspx?id=ikpGlu34sUCZ4l9rUKICULvi_w1JTR1FnU3_jSUEFttURVY1TUVKNzU4MFNZMldHRzlGODgzQzhNQi4u).  You may NOT edit tests.c to address any of these issues.


## Part two: Performance and coverage

2) make andRunPerformance

Before doing this you must edit the makefile so that the gprof invocation is complete.  Find the "fix" line in the makefile, and consult either the manual page for gprof on cerf or the [on-line gprof version 2.34 documentation](https://sourceware.org/binutils/docs-2.34/gprof/index.html) to help.  If you run into problems post a question in Piazza.

Once you have the code running correctly look at the gcov and gprof data.  Write below what they show about any performance bottleneck, and suggest ways in which the performance of the code could be improved.  YOU ARE NOT EXPECTED TO IMPLEMENT THESE IMPROVEMENTS - JUST DESCRIBE THEM in the same Google form referenced above.
