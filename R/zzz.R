.onLoad <- function(libname = find.package("fullcontactR"), pkgname = "fullcontactR") {
if (file.exists(system.file("fullcontactapikey.rds",package="fullcontactR"))==TRUE){
  apikey<<-readRDS(system.file("fullcontactapikey.rds",package="fullcontactR"))  
  } else{
  warning("These is no apikey cached on this system and one is required for these functions to work.")
  warning("Please aquire your apikey from fullcontact.com and run CacheKey() to save the key.")
  warning("The apikey will be loaded to the global enviroment when this package loads thereafter.")
  }
}
