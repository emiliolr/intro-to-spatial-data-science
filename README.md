# intro-to-spatial-data-science

A very basic introduction to the fundamentals of spatial data science and the tools available to manipulate spatial data. Prepared for the University of Cambridge [Conservation Research Institute](https://www.conservation.cam.ac.uk/) Early Career Researcher program.

All data needed to run the examples are in the `data/` directory. Examples showing how to read this data and perform basic spatial operations are given in both Python (`python_example.py` for script, `python_example.ipynb` for notebook) and R (`R_example.R` for script, `R_example.ipynb` for notebook). The packages needed for the examples are in `environment.yml`, which [can be used](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#creating-an-environment-from-an-environment-yml-file) to create a `conda` virtual environment.

Some packages that are worth pointing towards - click on the package name for a link to the documentation:

|                 |                          Python                          |                            R                           |
|-----------------|:--------------------------------------------------------:|:------------------------------------------------------:|
|          Vector |      [`geopandas`](https://geopandas.org/en/stable/)     |    [`sf`](https://r-spatial.github.io/sf/index.html)   |
|          Raster | [`rioxarray`](https://vylor.github.io/rioxarray/stable/) |                            -                           |
| Vector & Raster |     [`yirgacheffe`](https://yirgacheffe.org/latest/)     |      [`terra`](https://rspatial.github.io/terra/)      |
|   Visualization |                             -                            | [`tidyterra`](https://dieghernan.github.io/tidyterra/) |
