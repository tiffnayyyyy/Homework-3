#1
#a
install.packages("coronavirus")
library(coronavirus)

#b
head(coronavirus, 100)

#c
#Date represents the day that the data was summarized
#Providence represents the providence/state
#County represents which country the data was collected in
#Lat is the latitude coordinate
#Long is the longitude coordinate
#Type is the case type that the data confirmed
#Cases is the number of daily cases for a specfic case type

#2
#a
#Summary of the total confirmed cases by country
library(dplyr)
summary_confirmed_cases = coronavirus %>%
  filter(type == "confirmed") %>%
  group_by(country) %>%
  summarise(total_cases = sum(cases)) %>%
  arrange(-total_cases)
summary_df %>% head(20)

#b
top_five_countries_data <- coronavirus %>% 
  filter(type == "confirmed") %>%
  group_by(country) %>%
  summarise(total_cases = sum(cases)) %>%
  top_n(5)
#Plotting the data
library(ggplot2)
top_five_countries_data <- ggplot(data = top_five_countries_data, 
                                  aes(x=reorder(country, -total_cases), y = total_cases/1000)) +
  geom_bar(stat="identity", #represents the values in the data
           color="#002B36", #changes the outline color to dark blue
           fill="31b09e",   #changes the fill color to aqua blue
           width=1) +       #changes the width of plots to 1
  labs(title ="Top Five Countries by Total Cases", 
       subtitle = "Coronavirus Data",
       x ="Country", 
       y = "Total Cases (in thousands)") 
#c,d
top_five_countries_data + coord_flip() + labs(title = "Top 5 Countries by Total Cases")
plot_horizontal

#3
#a
library(tidyr)
coronavirus$date = as.Date(coronavirus$date)
recent_cases <- coronavirus %>%
  filter(type == "confirmed") %>%
  group_by(date) %>%
  summarise(total_cases = sum(cases))

#b
coronavirus %>% 
Line_graph_of_cases = ggplot(data = recent_cases, aes(x = date, y = total_cases)) +
  geom_line(stat = "identity", color = 002B36) +
  labs(subtitle = "Number of Recent Cases by Date",
       x = "Date",
       y = "Number of Cases")

