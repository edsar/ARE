require(RCurl)
require(rjson)

# source('fb_test.R');
# fb_test("12854644836/posts","AAACEdEose0cBAF3I2rInVIQHXi2RQUqFuE8kc0MQVMDqt7ti4VZBX1tltubZChW4QN6TrOQBTBVrpY4b7NYQeNos5yIRGJ2XBZAWafV2QZDZD");

fb_test <-  function(path,access_token=token){
    
    contents <- getURL( sprintf( "https://graph.facebook.com/%s&access_token=%s", path , access_token ) )
    temp <- fromJSON( contents );
    messages <- sapply(temp$data, function(x) x$message);
    x <- temp$data;
    i <- 1;
   while(i <= length(messages)){
          print(messages[[i]]);
                i<- i+1;
            }
   
}
