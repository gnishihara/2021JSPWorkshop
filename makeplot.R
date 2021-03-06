library(tidyverse)
figure01 = ggplot(iris) +
  geom_boxplot(aes(x = Species, y = Petal.Length)) +
  scale_x_discrete("Species") +
  scale_y_continuous("Petal length (mm)") +
  theme_gray(10)
# Resolution is 300
ggsave(filename = "figure01_300.png", plot = figure01,
       width = 80, height = 80, dpi = 1000, units = "mm")
# Resolution is 96
ggsave(filename = "figure01_96.png", plot = figure01,
       width = 80, height = 80, dpi = 96, units = "mm")
