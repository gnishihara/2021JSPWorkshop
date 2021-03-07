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


A = tibble(X = c("a", "b"),
       Y = c("t", "u"),
       Z = c(1, 2))

B = tibble(
  W = c("A", "B"),
  X = c("j", "k"),
       Y = c("m", "n"),
       Z = c(8, 9))

bind_rows(A, B)

X = tibble( A= c("a", "b", "c"),
            B = c("t", "u", "v"),
            C = 1:3)

Y = tibble( A= c("a", "b", "d"),
            B = c("t", "u", "w"),
            C = 3:1)

anti_join(X,Y)
semi_join(X,Y)
