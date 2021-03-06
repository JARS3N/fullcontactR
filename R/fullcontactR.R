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
    saveRDS(u,file.path(system.file(package="fullcontactR"),"fullcontactapikey.rds"))
    if (exists('apikey')==FALSE){
        apkikey<<-u
    }
}

### still need to add the folowing


disposable<-function(email,apikey){
    out_string<- paste0("https://api.fullcontact.com/v2/email/disposable.json?email=",
                        email,
                        "&apiKey=",apikey)
    out<-fromJSON(URLencode(out_string))
    out$Timestamp<-Sys.time()
    out
}

#https://api.fullcontact.com/v2/name/stats.json?name=john&apiKey=xxxx
stats<-function(name,apikey){
    out<- fromJSON(paste0(
        "https://api.fullcontact.com/v2/name/stats.json?name=",name,
        "&apiKey=",apikey))
    out$Timestamp<-Sys.time()
    out
}

#https://api.fullcontact.com/v2/name/parser.json?q=john%20smith&apiKey=xxxx


parser<-function(q,apikey){
    out_string<- fromJSON(paste0(
        "https://api.fullcontact.com/v2/name/parser.json?q=",q,
        "&apiKey=",apikey))
    out<-fromJSON(URLencode(out_string))
    out$Timestamp<-Sys.time()
    out
}
# shorthand to check for APIkey when starting functions,only sends warnings,still attempts
checkAPI<-if(exists("apikey")!=T){warning('No apikey detected')}

#period to check usage by 4digityear-2digitmonth
period<-function(period,apikey){
    out<-fromJSON(paste0('https://api.fullcontact.com/v2/stats.json?period=',period,'&apiKey=',apikey))
    out$Timestamp<-Sys.time()
}

period<-function(period,apikey){
    out<-fromJSON(paste0('https://api.fullcontact.com/v2/stats.json?period=',period,'&apiKey=',apikey))
    out$Timestamp<-Sys.time()
    out
}
