# ESA GAM Models for Bee Abundance Analysis

This repository contains Generalized Additive Models (GAMs) for analyzing bee abundance data collected from pan traps and sweep nets. The analysis focuses on understanding the relationship between environmental variables and bee abundance over time.

## Project Structure

- `all_variables_analyze_bees.R`: Main R script containing data preparation, model fitting, and visualization code
- `Final_SSO_ESA_Data.xlsx`: Source data file containing bee abundance and environmental variables
- `requirements.txt`: List of required R packages
- `.gitignore`: Git ignore file for R projects

## Setup

1. Install R (version 4.0.0 or later) from [CRAN](https://cran.r-project.org/)
2. Install the required R packages by running:
   ```
   install.packages("renv")
   renv::restore()
   ```

## Usage

1. Open the `all_variables_analyze_bees.R` script in RStudio
2. Set the working directory to the project folder
3. Run the script to reproduce the analysis

## Data

The dataset includes:
- Bee abundance counts from pan traps and sweep nets
- Environmental variables (temperature, humidity, wind speed, etc.)
- Temporal variables (date, season, etc.)
- Site information

## Model Details

The analysis includes GAMs with:
- Smooth terms for temporal patterns
- Random effects for site-level variation
- Model diagnostics and validation
- Visualization of results

## Output

The script generates:
- Model summaries and diagnostics
- Plots of abundance trends over time
- Model performance metrics
- Diagnostic plots

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
