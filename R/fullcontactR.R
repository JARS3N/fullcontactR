###Fullcontact API
#requires jsonlite

mail<-function(email,apikey){
    fromJSON(paste0(
    "https://api.fullcontact.com/v2/person.json?email=",
    email,
    "&apiKey=",
    apikey))
    }

phone<-function(phone,apikey){
    fromJSON(paste0(
    "https://api.fullcontact.com/v2/person.json?phone=+",
    phone,"&apiKey=",apikey))
}

twitter<-function(twitter,apikey){
    fromJSON(paste0(
        "https://api.fullcontact.com/v2/person.json?twitter=",
        twitter,"&apiKey=",apikey))
}

facebook<-function(facebookusername,apikey){
   out<- fromJSON(paste0(
        "https://api.fullcontact.com/v2/person.json?facebookUsername=",
        facebookusername,"&apiKey=",apikey))
   if (is.null(out$message)==FALSE){warning(out$message)}
   out$Timestamp<-Sys.time()
    out
}

domain<-function(domain,apikey){
    out<- fromJSON(paste0(
        "https://api.fullcontact.com/v2/company/lookup.json?domain=",
        domain,"&apiKey=",apikey))
    if (is.null(out$message)==FALSE){warning(out$message)}
    out$Timestamp<-Sys.time()
    out
}

deducer<-function(deducer,apikey){
    out<- fromJSON(paste0(
        "https://api.fullcontact.com/v2/name/deducer.json?email=",
        deducer,"&apiKey=",apikey))
    out$Timestamp<-Sys.time()
    out
}



similarity<-function(q1,q2,apikey){
    out<- fromJSON(paste0(
        "https://api.fullcontact.com/v2/name/similarity.json?q1=",q1,"&q2=",q2,
        "&apiKey=",apikey))
    out$Timestamp<-Sys.time()
    out
}

locationNormalizer<-function(place,apikey){
    out<- fromJSON(paste0(
        "https://api.fullcontact.com/v2/address/locationNormalizer.json?place=",place,
        "&apiKey=",apikey))
    out$Timestamp<-Sys.time()
    out
}

locationEnrichment<-function(place,apikey){
    out<- fromJSON(paste0(
        "https://api.fullcontact.com/v2/address/locationEnrichment.json?place=",place,
        "&apiKey=",apikey))
    out$Timestamp<-Sys.time()
    out
}

CacheKey<-function(u){
    saveRDS(u,syste.path(system.file(package="fullcontactR"),"fullcontactapikey.rds"
}

### still need to add the folowing

#https://api.fullcontact.com/v2/email/disposable.json?email=joe%2Btag%40sharklasers.com&apiKey=xxxx
#https://api.fullcontact.com/v2/person.json?email=bart@fullcontact.com&apiKey=xxxx

#https://api.fullcontact.com/v2/email/disposable.json?email=joe%2Btag%40sharklasers.com&apiKey=xxxx

#https://api.fullcontact.com/v2/name/stats.json?name=john&apiKey=xxxx
#https://api.fullcontact.com/v2/name/parser.json?q=john%20smith&apiKey=xxxx



