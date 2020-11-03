# Homework 3

## Due Date
This homework is due on ***insert-date***.

> **Late submissions will lose 50% of their original grade, with no exceptions.**
> This means that if your original grade would've been an 80%, you would get a 40%, and so on so forth.

## Submission Instructions
Please follow these exact submission instructions. Failure to follow these instructions will result in a 15 point deduction.

1. You must submit your R file and a PDF with a link to your Github repository, which must be public.
1. The PDF should be called `FirstNameLastName_Homework3.pdf`.
1. Your R file should be named in the format `FirstNameLastName_Homework3.R`.

## Style
Style for this assignment will count for 10 points of the assignment. Code style consists of the following:

Your code should be written in a way that is clear and easy to read. Try to use intention revealing variable name, i.e. names
that illustrate what your variable actually represents.
Use methods if you see code that can potentially be re-used.
Use comments if you believe your code needs to be explained further or is in any way unclear.

Not all of these apply to this specific assignment, but they are good things to keep in mind in the feature.

## Assignment Overview
The COVID-19 pandemic has taken over our lives. Hundreds of thousands of people around the world have been infected or died.
Data Analytics is at an all-time high.

## Assignment Objectives
The goal of this assignment is to get practical experience with using third-party libraries and graphing in R using ggplot2. You do not need to 
go above and beyond to make the graphs more beautiful than the instructions required. 

**You should read the documentation for the `coronavirus` library on Github in detail. It will make this assignment much easier. [This website](https://www.r-graph-gallery.com/) also has very helpful examples of how to use ggplot2.**


## Questions

### Question 1 (10 points)
a. Import the [`coronavirus`](https://github.com/RamiKrispin/coronavirus) package, which we will be using to get COVID-19 data. -x 2 points

b. Show the first 100 elements in the `coronavirus` package using the `head` function. - 5 points 

c. In a comment, describe what each column of the data frame represents (in plain English). - 3 points

### Question 2 (30 points)
a. Use `dplyr` to create a summary of the total confirmed cases by country (top 20) - 10 points

b. Display the top 5 countries in a bar graph, with the x-axis being the country names and the y-axis being the number of total cases. - 10 points

c. Flip the bar graph so it is a horizontal barplot. - 5 points

d. Add a title to the bar graph - "Top 5 countries by total cases" - 5 points

### Question 3 (30 points)
a. Create a data frame called `recent_cases` which represents the confirmed number of cases sorted by dates. - 15 points

> Hint: The Github documentation for the COVID-19 package has an example of this.  

b. Show the `recent_cases` data in a line graph, with the dates being on the x-axis and number of confirmed cases on the y-axis. - 15 points

