import rioxarray as rxr
import geopandas as gpd

import matplotlib.pyplot as plt

# Read the example area of habitat (AOH) raster
aoh_fp = 'data/aoh_example.tif'
aoh = rxr.open_rasterio(aoh_fp)

#  the xarray-style printout
print(aoh)
print()

#  actually taking a look at the raster
aoh.plot()
plt.show()

# Read the example range polygon
range_ex_fp = 'data/range_example.geojson'
range_ex = gpd.read_file(range_ex_fp)

#  the pandas-style printout
print(range_ex)

#  again, taking a look at the range polygon
range_ex.plot()
plt.show()