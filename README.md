# Mortality projections with R packages 'demography' and 'lifecontigencies'

As one of the main sections in the Ph.D thesis I am working in and based on the R packages demography, developed by Rob J. Hyndman, Heather Booth, Leonie Tickle, and John Maindonald (2011)  and lifecontingencies, developed by Giorgio A. Spedicato, (2013) we show mortality and simulate it for Spain with 
data-set available from Human Mortality Database (HMD).

Technicalities are omitted for the sake of simplicity but the reference with the corresponding code can be found here 
https://cran.r-project.org/web/packages/lifecontingencies/vignettes/mortality_projection.pdf
as our purpose is the simulation for Spain by adjusting the Lee-Carter model for mortality prediction (Lee and Carter, 1992)

The figures report below are the patterns of logarithm of death rates according to age and time for the spanish population.
Several behaviour are shown respectively for male, female and total population.

![mortesp1](https://user-images.githubusercontent.com/45860181/52142482-0d624680-2659-11e9-993d-fb51fe0e343f.png)

Now, following the same procedure that in the packages from Hyndman and Spedicato, we show the patterns but in time:

![mortesp2](https://user-images.githubusercontent.com/45860181/52142831-1869a680-265a-11e9-8bf1-62849230b635.png)

Spanish data confirms that mortality is falling at all ages with a different behaviour according to different ages.

In order to fit Lee - Carter model lca function can be used and we apply it 

![mortesp3](https://user-images.githubusercontent.com/45860181/52143349-82368000-265b-11e9-8cf6-66d883d6ab87.png)

![mortesp4](https://user-images.githubusercontent.com/45860181/52143504-f40ec980-265b-11e9-970f-9d526a78e84a.png)

![mortesp5](https://user-images.githubusercontent.com/45860181/52143766-9dee5600-265c-11e9-9d95-3d91c0d4f6aa.png)
