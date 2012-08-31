require(RCurl)
require(rjson)

# Given a page ID, get most current n posts 
# - Given a page ID, get most current x posts within y miles of a location (long, lat, distance)
# - Given a page ID, get most current n posts from a specified user

token <- "AAACEdEose0cBAO1fOIBXbNN4VY0eVWA5VZCA8LpAREFyhtClmwgo4VtcaLGqcB8W8GDPbWsXNZBQoMx1ekB5U1q74ZA777lVs4NzZAtqdgZDZD"


fb_recent_posts <- function (pageid, n=10, access_token = token){
    url <-sprintf( "https://graph.facebook.com/%s/posts?limit=%s&access_token=%s", pageid , n, access_token );
#    print (sprintf("url is : %s", url));
    contents <- getURL( url )
    fromJSON( contents );
}


# To search for objects near a geographical location, use type=location and add the center and distance parameters: 
# https://graph.facebook.com/search?type=location&center=37.76,-122.427&distance=1000

fb_posts_near <- function (search_term, longitude, latitude, distance,access_token = token){
    url <-sprintf( "https://graph.facebook.com/search?q=%s&center=%s,%s&distance=%d&access_token=%s",   search_term,longitude,latitude,distance,access_token );
 #   print (sprintf("url is : %s", url));
    contents <- getURL( url )
    fromJSON( contents );
}

temp <- fb_recent_posts("12854644836",50);
df <- temp$data;
print(sprintf("number posts %d", length(df)))
print(sprintf("  %s", df[[1]]$message))



temp <- fb_posts_near("bieber","47.76","-122.427",100);
results <- temp$data;
print(sprintf("number posts %d", length(results)))
print(sprintf("  %s", results[[1]]$id))


