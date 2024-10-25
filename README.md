# Instructions on the Package

------------------------------------------------------------------------

**Title: global.cheese.analysis**

Version: 0.0.0.9000

Author: Shu Wang

Description: Analyze and visualize cheese data using Shiny.

Encoding: UTF-8

Depends: R, shiny, tidyverse, dplyr, stringr, etc.

------------------------------------------------------------------------

## The goals for the Package

- Provide a dataset, named `cheeses`, for practicing the functionalities of the package.
- Build a function to launch the Shiny app developed for cheese analysis.
- Create other procedures to process and analyze cheese data, returning associated results.

------------------------------------------------------------------------

## About Installation

You can install the `global.cheese.analysis` package from GitHub using the `devtools` package:

```R
devtools::install_github("https://github.com/ETC5523-2024/assignment-4-packages-and-shiny-apps-shuwang0405.git")
```

To load the `global.cheese.analysis` package, follow these steps:

1. Load the `lobal.cheese.analysis` package using the command:
   ```R
   library(lobal.cheese.analysis)
   ```

2. Execute the functions `load_all()` and `install()` in order:
   ```R
   load_all()   # Loads all functions and data in the package
   install()    # Installs the package
   ```

3. Use the function `installed.packages()` to check the installation outcomes:
   ```R
   installed.packages()  # Lists installed packages to confirm successful installation
   ```



## Some Examples about the Usage

> The functions provided in the package are: `launch_cheese_app()`, `clean_cheese_data()`, and `analyze_fat_by_country()`. The related HELP information can be accessed by executing `?function` or `help(function)`. Each of them should be used according to the following examples:

> > The function `launch_cheese_app()`

```R
launch_cheese_app()
```

> > The function `clean_cheese_data()`

```R
# Load raw cheese data
cheese_raw <- read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2024/2024-06-04/cheeses.csv')

# Clean the data using the custom function
cheese_data_clean <- clean_cheese_data(cheese_raw)
head(cheese_data_clean)
```

> > The function `analyze_fat_by_country()`

```R
# Analyze average fat content by country
avg_fat_by_country <- analyze_fat_by_country(cheese_data_clean)
print(head(avg_fat_by_country, 10))
```


