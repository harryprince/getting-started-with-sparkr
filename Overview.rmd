---
title: Overview
layout: default
output: bookdown::html_chapter
---

# Overview

SparkR is an R package that provides a light-weight frontend to use Apache Spark from R. In Spark 1.4.0, SparkR provides a distributed data frame implementation that supports operations like selection, filtering, aggregation etc. (similar to R data frames, dplyr) but on large datasets.  

I am excited to announce that the upcoming Apache Spark 1.4 release will include SparkR, an R package that allows data scientists to analyze large datasets and interactively run jobs on them from the R shell.R is a popular statistical programming language with a number of extensions that support data processing and machine learning tasks. However, interactive data analysis in R is usually limited as the runtime is single-threaded and can only process data sets that fit in a single machine’s memory.  SparkR, an R package initially developed at the AMPLab, provides an R frontend to Apache Spark and using Spark’s distributed computation engine allows us to run large scale data analysis from the R shell.


## Project History {#project-history}

The SparkR project was initially started in the AMPLab as an effort to explore different techniques to integrate the usability of R with the scalability of Spark. Based on these efforts, an initial developer preview of SparkR was first open sourced in January 2014. The project was then developed in the AMPLab for the next year and we made many performance and usability improvements through open source contributions to SparkR. SparkR was recently merged into the Apache Spark project and will be released as an alpha component of Apache Spark in the 1.4 release.  

## SparkR DataFrames {#sparkr-dataframes}

The central component in the SparkR 1.4 release is the SparkR DataFrame, a distributed data frame implemented on top of Spark.  Data frames are a fundamental data structure used for data processing in R and the concept of data frames has been extended to other languages with libraries like Pandas etc. Projects like dplyr have further simplified expressing complex data manipulation tasks on data frames. SparkR DataFrames present an API similar to dplyr and local R data frames but can scale to large data sets using support for distributed computation in Spark.


## Benefits of Spark integration {#benefits-of-spark-integration}

In addition to having an easy to use API, SparkR inherits many benefits from being tightly integrated with Spark. These include:  

* Data Sources API: By tying into Spark SQL’s [_data sources API SparkR_](https://databricks.com/blog/2015/01/09/spark-sql-data-sources-api-unified-data-access-for-the-spark-platform.html) can read in data from a variety of sources include Hive tables, JSON files, Parquet files etc.  
  
* Data Frame Optimizations: SparkR DataFrames also inherit all of the optimizations made to the computation engine in terms of [_code generation, memory management_](https://databricks.com/blog/2015/04/28/project-tungsten-bringing-spark-closer-to-bare-metal.html). For example, the following chart compares the runtime performance of running group-by aggregation on 10 million integer pairs on a single machine in R, Python and Scala (using the same dataset as [_https://goo.gl/iMLXnh_](https://goo.gl/iMLXnh)). From the graph we can see that using the optimizations in the computation engine makes SparkR performance similar to that of Scala / Python.  

* Scalability to many cores and machines: Operations executed on SparkR DataFrames get automatically distributed across all the cores and machines available on the Spark cluster. As a result SparkR DataFrames [_can be used on terabytes of data_](http://databricks.com/blog/2014/11/05/spark-officially-sets-a-new-record-in-large-scale-sorting.html) and run on clusters with thousands of machines.


## Recommended reading {#recommended-reading}

SparkR is still a relatively young language, and the resources to help you understand it are still maturing. In my personal journey to understand R, I've found it particularly helpful to use resources from other programming languages. R has aspects of both functional and object-oriented (OO) programming languages. Learning how these concepts are expressed in R will help you leverage your existing knowledge of other programming languages, and will help you identify areas where you can improve.

To understand why R's object systems work the way they do, I found [_The Structure and Interpretation of Computer Programs_](http://mitpress.mit.edu/sicp/full-text/book/book.html) (SICP) by Harold Abelson and Gerald Jay Sussman, particularly helpful. It's a concise but deep book. After reading it, I felt for the first time that I could actually design my own object-oriented system. The book was my first introduction to the generic function style of OO common in R. It helped me understand its strengths and weaknesses. SICP also talks a lot about functional programming, and how to create simple functions which become powerful when combined.

To understand the trade-offs that R has made compared to other programming languages, I found [_Concepts, Techniques and Models of Computer Programming_](http://amzn.com/0262220695?tag=devtools-20) by Peter van Roy and Sef Haridi extremely helpful. It helped me understand that R's copy-on-modify semantics make it substantially easier to reason about code, and that while its current implementation is not particularly efficient, it is a solvable problem.

If you want to learn to be a better programmer, there's no place better to turn than [_The Pragmatic Programmer_](http://amzn.com/020161622X?tag=devtools-20) by Andrew Hunt and David Thomas. This book is language agnostic, and provides great advice for how to be a better programmer.

## Getting help {#getting-help}

Currently, there are two main venues to get help when you're stuck and can't figure out what's causing the problem: [stackoverflow](http://stackoverflow.com) and the R-help mailing list. You can get fantastic help in both venues, but they do have their own cultures and expectations. It's usually a good idea to spend a little time lurking, learning about community expectations, before you put up your first post. \index{help}

Some good general advice:

* Make sure you have the latest version of R and of the package (or packages)
  you are having problems with. It may be that your problem is the result of
  a recently fixed bug.

* Spend some time creating a
  [reproducible example](http://stackoverflow.com/questions/5963269). This
  is often a useful process in its own right, because in the course of making
  the problem reproducible you often figure out what's causing the problem.

* Look for related problems before posting. If someone has already asked
  your question and it has been answered, it's much faster for everyone if you
  use the existing answer.
