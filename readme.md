# R Visualization

This workshop focuses on `ggplot2` for making plots in R.  The workshop also briefly covers additional packages.  

This workshop also makes use of other `tidyverse` packages for data manipulation and transformation.

# Software and Files

For this workshop, you'll need to install some R packages and download the workshop files from this repository. See below.

Slides are available to download separately at the links below; click on the link (which goes to Box), then choose the download option if you want.  You may be able to view the Powerpoint version directly in Box.  If you don't have these programs, try uploading to use Google Slides to view them.

* [Keynote](https://northwestern.box.com/s/j5cedht1d28nl0kmgpil4q7trwhh446v): this is the original; ~250MB
* [Powerpoint](https://northwestern.box.com/s/fl0cm2lxfuhjedssgiuinxciwkp67tbz): much smaller, some alignment/fonts might be slightly off from the conversion

## Packages

Whether using R on your laptop or in the cloud, there are several packages you'll need to install: 

* tidyverse
* babynames

Install these with the R command

```r
install.packages(c("tidyverse", "babynames", "maps"), 
                 repos="http://cran.rstudio.com")
```

or use the buttons in the Packages window in RStudio to install them.

If you previously installed `tidyverse` or `ggplot2`, please update `ggplot2` to the current version (3.0.0). You can use the Update button the Packages tab in RStudio to update the package.


## Option 1: On your laptop 

### R and RStudio

This workshop assumes you have recent versions of R and RStudio - R 3.4 or 3.5 and RStudio 1.1.  Install or update packages listed above.

### Workshop Materials

To download workshop materials (final versions will be available 2-3 days before the workshop), click on the green Clone or Download button, then download the repository as a ZIP file.  

![github download](images/githubdownload.png)

Find the downloaded .zip file on your computer, likely in your Downloads folder.  Unzip it - usually by double-clicking.  This will create a directory called r\_ggplot2\_july2018-master.  Move this somewhere on your computer where you'll be able to find it, like your Documents folder.  

Double click on the .Rproj folder in the folder to launch the project in RStudio.  Alternatively, open RStudio, then go to File :arrow_right: Open Project and find the .Rproj file in the r\_ggplot2\_july2018-master directory to open.

Alternatively, if you're familiar with git, you can create a new RStudio project directly from this repository (again, once the materials are posted).


## Option 2: RStudio Cloud

[RStudio Cloud](https://rstudio.cloud) is a way to run RStudio in your web browser.  Set up an account.  In Your Workspace, create a new project: Click on the down arrow next to New Project in the blue button, then select New Project from a Git Repository.  Provide the address of this repository: https://github.com/nuitrcs/r_ggplot_july2018.  This will copy all of the files from this repository into your new project.  

![rstudio cloud new project](images/rstudiocloud.png)

*You should wait until 2-3 days before the workshop to do this, to ensure you have the most current version of the workshop files.**

You will also need to install packages in this project space.

# Exercises

For more practice after the workshop, see the exercises below.

*All of these we written with a version of `ggplot2` < 3.0.0, so a few things may be different.*

[R for Data Science](http://r4ds.had.co.nz/): Chapter 3 covers visualization with `ggplot2` and includes exercises.  Chapter 28 includes more advanced topics, also with exercises.  Individuals have posted their (non-vetted) solutions online (i.e. [Jeffrey Arnold](https://jrnold.github.io/r4ds-exercise-solutions/)).  There is also an online learning group, organized through Slack, that is working through this book: [details](https://medium.com/@kierisi/r4ds-the-next-iteration-d51e0a1b0b82).

[R Exercises](https://www.r-exercises.com/2018/02/23/practice-you-ggplot-skills-exercises/): a set of plots, with the challenge to make them.  Includes answers.

[Harvard IQSS Tutorial](https://tutorials.iq.harvard.edu/R/Rgraphics/Rgraphics.html): includes a section "Putting It All Together" with a challenge of recreating a graph from The Economist, with the answer code included (not hidden).  This is a little about the plotting, but mostly about styling.

[Computing for the Social Sciences Course Exercises](https://cfss.uchicago.edu/dataviz_gapminder.html): from instructor Benjamin Soltoff, exercises using the `gapminder` data, with solutions.

[UVA BIMS8382 Course Exercises](http://bims.fun/r-viz-homework.html): more exercises from a course, with solutions.  Part exericse, part walkthrough.  You can see the plots you're trying to make.


# Resources

See additional resources and links to some visualization examples in the [main R workshop repository](https://github.com/nuitrcs/rworkshops).

## Reference

[`ggplot2` Cheat Sheet](https://github.com/rstudio/cheatsheets/raw/master/data-visualization-2.1.pdf): you'll want to have this for reference

[R Graph Gallery](http://www.r-graph-gallery.com/portfolio/ggplot2-package/) for `ggplot2` (it has base R graphics as well).  This site has code for each plot, so find what you're looking for, and modify the code.  [from Data to Viz](https://www.data-to-viz.com) has charts to help you choose a plot type (linking to the graph gallery), plus a list of [data visualization choices to avoid](https://www.data-to-viz.com/caveats.html).

[R Graphics Cookbook](https://ase.tufts.edu/bugs/guide/assets/R%20Graphics%20Cookbook.pdf)

[Cookbook for R](http://www.cookbook-r.com/Graphs/)

[`ggplot2` Data Visualization Vocabulary](https://medium.com/@kierisi/fc8fa4d20d2d) from Jesse Maegan: confused by unfamiliar terms in the `ggplot2` help and functions?  You can find explanations of many of them here.

[`ggplot2` Extensions](http://www.ggplot2-exts.org/gallery/): list of packages that extend `ggplot2` using the same logic, with links to them on GitHub

[`ggplot2` Extensions described](https://blog.modeanalytics.com/r-ggplot-extension-packages/): another list of extensions with blurbs - these extensions are generally included on the list above too

[A Layered Grammar of Graphics](http://vita.had.co.nz/papers/layered-grammar.pdf): The paper by Hadley Wickham that introduced `ggplot2`; explains the grammar of graphics approach.

[`ggplot2` Aesthetics Vignette](https://cran.r-project.org/web/packages/ggplot2/vignettes/ggplot2-specs.html): part of the package documentation, how the different aesthetics elements work.

## Tutorials

[`ggplot2` Tutorial](http://seananderson.ca/ggplot2-FISH554/) from Sean Anderson, University of Washington

[`ggplot2` Tutorial](http://tutorials.iq.harvard.edu/R/Rgraphics/Rgraphics.html) From the Harvard IQSS Data Science Services group.

[Getting started with data visualization in R using `ggplot2`](http://www.storybench.org/getting-started-data-visualization-r-using-ggplot2) from Martin Frigaard at Storybench

[`ggplot2` Tutorial](http://r-statistics.co/ggplot2-Tutorial-With-R.html) from Selva Prabhakaran with examples of many different kinds of plots

[An introduction to ggplot2](https://rawgit.com/eco-data-science/VisualizingData/master/ggplot2_intro.html) by Melanie Frazier, shows lots of color/style options along with a good general overview of ggplot

Software Carpentry: [R for Reproducible Scientific Analysis](http://swcarpentry.github.io/r-novice-gapminder/08-plot-ggplot2/): course material for introductory R workshop, includes a section on `ggplot2`

[Swirl](http://swirlstats.com/): Interactive tutorials that you run in R.  The Exploratory Data Analysis course includes sections on `ggplot2`.

[50 `ggplot2` Visualizations](http://r-statistics.co/Top50-Ggplot2-Visualizations-MasterList-R-Code.html) - Example visualizations with code, from Selva Prabhakaran; also has some tutorials on the site.


## Books

[`ggplot2` Elegant Graphics for Data Analysis](http://ggplot2.org/book/) by Hadley Wickam, who wrote the package.  The book can also be downloaded as a pdf by going through the Library.  The book's code is [here](https://github.com/hadley/ggplot2-book).

[R for Data Science](http://r4ds.had.co.nz/): free online book using the `tidyverse` of packages, has a chapter on [data visualization](http://r4ds.had.co.nz/data-visualisation.html).  It includes a chapter on [Graphics for communication](http://r4ds.had.co.nz/graphics-for-communication.html) which doesn't teach `ggplot2` so much as give you good principles of making charts with it.

[Data Visualization for Social Science](http://socviz.co/): by Kieran Healy, an online book that uses `ggplot2`


## Base R Graphics

A comparison on Base graphics and `ggplot2` from [Flowing Data](http://flowingdata.com/2016/03/22/comparing-ggplot2-and-r-base-graphics/), which is a great site in general for R graphics, but he doesn't use `ggplot2`.


## More Help

[Stack Overflow](http://stackoverflow.com/questions/tagged/ggplot): great for searching for issues; most questions you have will have already been asked by someone else; be aware of the date of answers, as sometimes an answer may be a little out of date.

## Colors, Styles, and Formats

[colorblindr](https://www.rdocumentation.org/packages/colorblindr): package to help you check what your plots might look like to someone who is colorblind

[ColorBrewer](http://colorbrewer2.org/): color palettes, intended for maps, but useful for other applications; accessible through `ggplot2` scales.

[R Cookbook `ggplot2` Colors](http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/): examples of how to change different color options


