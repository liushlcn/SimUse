 ## Sort a named list in R
 ## https://stackoverflow.com/questions/27312311/sort-a-named-list-in-r
 lst = lst[order(names(lst))]

# remove the axis text with default barplot
 barplot(col = pals::tableau20(6), las = 1, xlim = c(0, 35), border = F, xpd = T, ann = F, xaxt = 'n', horiz  = T, beside = T)

# change the axis text and its angle
# https://www.tenderisthebyte.com/blog/2019/04/25/rotating-axis-labels-in-r/
# https://stats.idre.ucla.edu/r/faq/how-can-i-change-the-angle-of-the-value-labels-on-my-axes/

# add large file to github
# https://git-lfs.github.com/

# http://61.54.245.250:8080/#/index

# Fast vectorized merge of list of data.frames by row
# https://stackoverflow.com/questions/4863341/fast-vectorized-merge-of-list-of-data-frames-by-row?rq=1
# Create a column based on the name of the element list that contain the data frame in R
# https://stackoverflow.com/questions/48255351/create-a-column-based-on-the-name-of-the-element-list-that-contain-the-data-fram

library(tidyverse)

df <- data.frame(sample = letters[1:6],
  value = c(1,1.5,NA,3,4, 2)) %>% 
  mutate(cut_value = cut(value, breaks = c(1,2,3,4)),
    color = factor(cut_value, 
      levels = levels(cut_value),
      labels = c('darkred', 'orange', 'yellow')),
    color = fct_explicit_na(color, na_level = 'grey85'))
ggplot(df, aes(sample, value))+
  geom_bar(stat = 'identity', aes(fill = color))+
  scale_fill_identity(guide = 'legend',
    labels = levels(df$cut_value),
    breaks = levels(df$color)[-4])

