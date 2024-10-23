# Instructions on the Package

------------------------------------------------------------------------

**Title: shinyVect**

Version: 0.0.0.9000

Author: Shu Wang

Description: Open a shiny and process some vectors

Encoding: UTF-8

Depends: R, shiny, tidyverse, misty and so on

------------------------------------------------------------------------

## The goals for the Package

-   provide a data set, named `honeyproduction`, for the practice of the package;

-   build a function to launch the shiny app developed in the preceding assignment;

-   create other procedures to process single and dual vectors and return the associated results;

------------------------------------------------------------------------

## About Installation

You can install the `shinyVect` package from GitHub using the `devtools` package:

```
devtools::install_github("https://github.com/ETC5523-2023/rpkg-shuwang0405.git")
```

To load the package, the following steps are needed to obey:

1.  load the package `devtools` by using the argument `library(devtools)`;
2.  execute the functions `load_all()` and `install()` orderly;
3.  execute the function `installed.packages()` to check the installation outcomes.

------------------------------------------------------------------------

## Some Examples about the Usage

> The functions in the package provided are: `openshiny` , `vectorView`, and `duovectorView` and the related HELP information can be accessed by executing `?function` or `help(function)` arguments. Each of them should be used according the following examples:

> > the function `openshiny()`

    openshiny(ui = ui, server = server)

> > the function `vectorView()`

    # create some vectors
    x = c('a', 'a', 'b', 'n', 'n', 'n', 'n'); 
    xx = as.factor(x); 
    y = sample(5:409, 224); 
    yy = sample(5:409, 2)

    ## execute the function as:
    vectorView(x);
    vectorView(xx);
    vectorView(y);
    vectorView(yy);

> > the function `duovectorView()`

    # create some vectors

    x = honeyproduction$state; 
    y = honeyproduction$totalprod; 
    z = honeyproduction\$stocks; 
    xx = x[1:10]

    ## executive the fucntion

    duovectorView(y, z); 
    duovectorView(x, z); 
    duovectorView(xx, xx)
