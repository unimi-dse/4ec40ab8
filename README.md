IMDb "Top 50 movies" 
====================



---------------------

<h2>I get to use R for scraping the data for the Top 50 movies from the IMDb website.<a href="https://www.imdb.com/search/title/?groups=top_250&sort=user_rating,desc">IMDb</a>.</h2>

---------------------
<h2>Installation</h2>

First install the R package "devtools" if not installed:  

>  devtools::install_github('unimi-dse/4ec40ab8')

---------------------
<h2>Usage</h2>


> library(Top50)

---------------------

<h2>Shiny App</h2>

The function runapp() runs a Graphical User Interface to present the data selected by the user.

> runapp()

---------------------

<h2>Based on the above data, the longest run-time movie genre.</h2>

> First plot

---------------------

<h2>Based on the above data, genre which has the most votes during execution 130-160 minutes.</h2>

> Second plot

---------------------
---------------------

<h2>Based on the above data, across all genres which genre has the highest average gross earnings in runtime 100 to 120.</h2>

> Third plot

---------------------



