files <- sort(list.files("projects", pattern = "\\.Rmd$",
                         recursive = TRUE, full.names = TRUE))
for (file in files) {
  message("Rendering ", file)
  rmarkdown::render(file, quiet = TRUE,
                    envir = new.env(parent = globalenv()))
}
