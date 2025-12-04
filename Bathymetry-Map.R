library(ggOceanMaps)
library(patchwork)
library(extrafont)

p1 <- basemap(limits = 60, bathymetry = TRUE)
p2 <- basemap(limits = -60, bathymetry = TRUE)

combined_map <- p1 + p2


ggsave("combined_map.png", combined_map, width = 12, height = 6, dpi = 300)

ggsave("combined_map.pdf", combined_map, width = 12, height = 6)
