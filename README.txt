enter r environment

load fb_test with 
> source('fb_test.R')

get an access token from FB 
https://developers.facebook.com/tools/explorer

you can either pass a token to the function or set it in a variable called token

>fb_test("AAACEdEose0cBAHok27o80NQ1ebylXBjZBhMnYhaS9xCXLS6eISF11VTbZAUYv3odSx9G8HBAz0yc4LBGVgSH7ZAaI065WAwKydgDq6a9AZDZD");

or 

> token="AAACEdEose0cBAHok27o80NQ1ebylXBjZBhMnYhaS9xCXLS6eISF11VTbZAUYv3odSx9G8HBAz0yc4LBGVgSH7ZAaI065WAwKydgDq6a9AZDZD"
> fb_test()


