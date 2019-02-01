# Mortality projections
Mortality Projections with demography and lifecontigencies R packages

Based on the R packages demography, developed by Rob J. Hyndman, Heather Booth, Leonie Tickle, and John Maindonald
(2011)  and lifecontingencies, developed by Giorgio A. Spedicato, (2013) we show mortality and simulate it for Spain with 
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

To fit Lee - Carter model (without going through logaritms) lca function can be used. Lee-Carter is here applied separately between male, female and total population and by considering a maximum age equal to 100.
