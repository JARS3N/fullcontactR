.onLoad <- function(libname = find.package("fullcontactR"), pkgname = "fullcontactR") {
  apikey<<-readRDS(system.file("fullcontactapikey.rds",package="fullcontactR"))  
}
