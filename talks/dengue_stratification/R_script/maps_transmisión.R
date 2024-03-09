

# Step 1. load the Index P
index_p_mean <- terra::rast("/Users/fdzul/Library/CloudStorage/OneDrive-Personal/datasets/index_p/Mexico/Mexico_indexP_yearly_mean_rasters.tif") |>
    dplyr::select(X2022)

names(index_p_mean)

index_p <- ggplot2::ggplot() +
    tidyterra::geom_spatraster(data = index_p_mean) +
    #ggplot2::facet_wrap(~lyr, ncol = 1) +
    tidyterra::scale_fill_whitebox_c("IndexP",
                                     palette = "muted",
                                     #labels = scales::label_number(suffix = "º"),
                                     n.breaks = 10,
                                     guide = ggplot2::guide_legend(reverse = TRUE)) +
    ggplot2::theme(legend.position = "none") +
    ggplot2::ggtitle(label = "",
                     subtitle = "Index P (Nazake et al 2023)")
# Step 2. load the foi ####
foi <- terra::rast("/Users/fdzul/Dropbox/2024/review_etvs/risk_stratification/risk/2020_catarino_et_al/aax4144_data_file_s3.tif")

names(foi) <- "foi"
# Step 2.1 load the AGEE ####
library(sf)
mex <- rgeomex::AGEE_inegi19_mx |>
    terra::vect()

# Step 2.3 mask the data  of foi ####
foi <- terra::crop(x = foi,
                   y = mex,
                   mask = TRUE)

foi_m <-ggplot2::ggplot() +
    tidyterra::geom_spatraster(data = foi) +
    #ggplot2::facet_wrap(~lyr, ncol = 1) +
    tidyterra::scale_fill_whitebox_c("FOI",
                                     palette = "muted",
                                     #labels = scales::label_number(suffix = "º"),
                                     n.breaks = 10,
                                     guide = ggplot2::guide_legend(reverse = TRUE)) +
    ggplot2::theme(legend.position = "none") +
    ggplot2::ggtitle(label = "",
                     subtitle = "FOI (Cattarino et al 2020)")


# Step 3. load the females ####
density_01 <- terra::rast("/Users/fdzul/Dropbox/2024/review_etvs/risk_stratification/risk/2023.zardini_code/ae aegypti/density/central_america_density_with_mask_month_1.tif")
density_07 <- terra::rast("/Users/fdzul/Dropbox/2024/review_etvs/risk_stratification/risk/2023.zardini_code/ae aegypti/density/central_america_density_with_mask_month_7.tif")

# Step 2.3 mask the data  of foi ####
density_07 <- terra::crop(x = density_07,
                          y = mex,
                          mask = TRUE)
density_01 <- terra::crop(x = density_01,
                          y = mex,
                          mask = TRUE)
hembras_julio <- ggplot2::ggplot() +
    tidyterra::geom_spatraster(data = density_07) +
    tidyterra::scale_fill_whitebox_c("Females en Julio",
                                     palette = "muted",
                                     #labels = scales::label_number(suffix = "º"),
                                     n.breaks = 10,
                                     guide = ggplot2::guide_legend(reverse = TRUE))  +
    ggplot2::theme(legend.position = "none") +
    ggplot2::ggtitle(label = "",
                     subtitle = "Hembras Ae. aegypti (Zardini et al 2024)")


hembras_enero <- ggplot2::ggplot() +
    tidyterra::geom_spatraster(data = density_01) +
    tidyterra::scale_fill_whitebox_c("Females en Enero",
                                     palette = "muted",
                                     #labels = scales::label_number(suffix = "º"),
                                     n.breaks = 10,
                                     guide = ggplot2::guide_legend(reverse = TRUE)) +
    ggplot2::theme(legend.position = "none") +
    ggplot2::ggtitle(label = "",
                     subtitle = "Hembras de Ae. aegypti (Zardini et al 2024)")


library(patchwork)
(index_p | foi_m) / (hembras_enero | hembras_julio)
