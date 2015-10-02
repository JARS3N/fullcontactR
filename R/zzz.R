.onLoad <- function(libname = find.package("fullcontactR"), pkgname = "fullcontactR") {
if (file.exists(system.file("fullcontactapikey.rds",package="fullcontactR"))==TRUE){
  apikey<<-readRDS(system.file("fullcontactapikey.rds",package="fullcontactR"))  
  }
}
