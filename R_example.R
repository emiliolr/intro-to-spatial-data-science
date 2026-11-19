library(tidyverse)

library(terra)

# tidyterra unfortunately doesn't have an up to date version on anaconda.org
if(!require(tidyterra)){
    install.packages("tidyterra", repos = "https://cran.ma.imperial.ac.uk/")
}

# Read the example area of habitat (AOH) raster
aoh_fp <- "data/aoh_example.tif"
aoh <- terra::rast(aoh_fp)

#  looking at the printout
print(aoh)
print("")

#  plotting to look at the raster
png("outputs/aoh.png", units = "in", height = 4, width = 5, res = 400)
plot(aoh)
dev.off()

#  instead plotting w/tidyterra
ggplot() +
    tidyterra::geom_spatraster(data = aoh) +
    tidyterra::scale_fill_grass_c(palette = "viridis") +
    theme_void()

ggsave("outputs/aoh_nicer.png", height = 4, width = 5, dpi = 400, bg = "white")

# Read the example range polygon
range_fp <- "data/range_example.geojson"
range <- terra::vect(range_fp)

#  looking at the printout
print(range)

#  again, plotting with tidyterra to take a look
ggplot() +
    tidyterra::geom_spatvector(data = range, color = "black", fill = "wheat") +
    theme_void()

ggsave("outputs/range.png", height = 4, width = 5, dpi = 400, bg = "white")

# An example of how you might plot this data
aoh_masked <- terra::mask(aoh, range) # remove pixels outside of the range polygon
aoh_masked <- aoh_masked / 1e6 # convert from m2 to km2

ggplot() +
    tidyterra::geom_spatraster(data = aoh_masked) +
    tidyterra::geom_spatvector(data = range, color = "black", fill = NA, linewidth = 0.7) +
    tidyterra::scale_fill_grass_c(palette = "viridis", name = "km2") +
    theme_void() +
    theme()

ggsave("outputs/range_and_aoh.png", height = 4, width = 5, dpi = 400, bg = "white")