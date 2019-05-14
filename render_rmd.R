
# find all Rmd scripts in the main directory
# compile them using uses rmarkdown::render()
# not as good as a makefile but does the job


# remove old md files
unlink("./*.md")

# package
library(rmarkdown)

#  identify the path to the directory we want
path_to_Rmds <- "./"

# find all files that end in .Rmd
Rmd_scripts <- list.files(
	path = path_to_Rmds
	, pattern = "\\.Rmd$"
	, full.names = TRUE
)

# render each script
sapply(Rmd_scripts, function(x) render(x))

# render one script
# render("cm/cm051_run-all-scripts.Rmd")


# delete html byproducts
unlink("./*.html")

