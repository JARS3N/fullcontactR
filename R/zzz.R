.onLoad <- function(libname = find.package("fullcontactR"), pkgname = "fullcontactR") {
  apikey<<-read.rds(system.file("fullcontactapikey.rds",package="fullcontactR"))  
}