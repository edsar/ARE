require(RCurl)

fb_test <-  function(access_token=token){
    print(paste("about to request data with token ",access_token))
    data <- getURL( sprintf( "https://graph.facebook.com/12854644836/posts&access_token=%s", access_token ) )
    print(data);
}
