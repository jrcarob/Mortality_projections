# Spanish mortality projections with R packages 'demography' and 'lifecontigencies'

As one of the main sections in the Ph.D thesis I am working in and based on the R packages 'demography', developed by Rob J. Hyndman, Heather Booth, Leonie Tickle, and John Maindonald (2011)  and 'lifecontingencies', developed by Giorgio A. Spedicato, (2013) we show mortality and simulate it for Spain with data-set available from Human Mortality Database (HMD) with a total set from 1908 to 2016.

Technicalities are omitted for the sake of simplicity but the reference with the corresponding code can be found here 
https://cran.r-project.org/web/packages/lifecontingencies/vignettes/mortality_projection.pdf
as our purpose is the simulation for Spain by adjusting the Lee-Carter model for mortality prediction (Lee and Carter, 1992)

The figures report below are the patterns of logarithm of death rates according to age and time for the spanish population.
Several behaviour are shown respectively for male, female and total population.

![mortesp1](https://user-images.githubusercontent.com/45860181/52142482-0d624680-2659-11e9-993d-fb51fe0e343f.png)

Now, following the same procedure that in the packages from Hyndman and Spedicato, we show the patterns but in time:

![mortesp2](https://user-images.githubusercontent.com/45860181/52142831-1869a680-265a-11e9-8bf1-62849230b635.png)

Spanish data confirms that mortality is falling at all ages with a different behaviour according to different ages.

In order to fit Lee - Carter model, the R function 'lca' can be used to estimate ax, bx and kt and see the behavior of the data.

![mortesp3](https://user-images.githubusercontent.com/45860181/52143349-82368000-265b-11e9-8cf6-66d883d6ab87.png)

Male and female trend have a similar pattern . As we can expect, the mortality grows with the age (ax pattern). However, is significantly remarkable the decreasing in some age-range. This behavior sistematically repeats as it can be seen in the figure and further investigation must be done in order to explain such trend.
As expected, the estimator of 'kt' has a decreasing trend with the increment of time.

Values of predicted 'kt' rescaled to zero in the last observed year (2016) are also computed.
![mortesp5](https://user-images.githubusercontent.com/45860181/52143766-9dee5600-265c-11e9-9d95-3d91c0d4f6aa.png)

Finally, the forecast rates are showed in the figures below where past and and forecasted rates are simulated according to different population for people aged 65.

![mortesp4](https://user-images.githubusercontent.com/45860181/52143504-f40ec980-265b-11e9-970f-9d526a78e84a.png)
