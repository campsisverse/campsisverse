Sys.setenv(GITHUB_PAT = "")

repos <- "https://CRAN.R-project.org/"
options(repos = c(CRAN = repos))

# Install tests by default
options(INSTALL_opts = "--install-tests")

pkgs <- c(
  "campsisverse/campsismod@v1.5.0",
  "campsisverse/campsis@v1.9.3",
  "campsisverse/campsisnca@v1.7.3",
  "campsisverse/campsismisc@v1.1.0",
  "campsisverse/campsisqual@v1.5.1",
  "campsisverse/campsistrans@v1.5.0",
  "mrgsolve",
  "rxode2",
  "xgxr", # e-Campsis (R version)
  "cowplot", # e-Campsis (R version)
  "ragg", # High-quality 2D drawing library
  "plumber", # e-Campsis desktop
  "arrow", # e-Campsis desktop
  "base64enc", # e-Campsis desktop
  "webshot2" # e-Campsis desktop
)

# Install and snapshot (lock=TRUE)
renv::install(
  packages = pkgs,
  rebuild = TRUE,
  repos = repos,
  lock = TRUE
)
