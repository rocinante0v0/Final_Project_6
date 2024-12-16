FROM rocker/verse:latest

# Set working directory
WORKDIR /project

# Copy all project files into the container
COPY . /project

# Install required R libraries
RUN R -e "install.packages(c('rmarkdown', 'knitr', 'ggplot2', 'dplyr', 'here'))"

# Ensure Report directory exists
RUN mkdir -p /project/Report

# Render the RMarkdown report
CMD ["Rscript", "-e", "rmarkdown::render('Report.rmd', output_file = 'Report/Report.html')"]

