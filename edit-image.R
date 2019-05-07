library("magick")

img <- image_read("images/midfield-grad-logo-wb.png")

img <- image_fill(img, "transparent", point = "+10+10", fuzz = 5)
img <- image_fill(img, "transparent", point = "+195+253", fuzz = 5)
img <- image_fill(img, "transparent", point = "+161+299", fuzz = 5)


image_write(img, path = "images/midfield-grad-logo.png", format = "png")
