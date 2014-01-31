# Overview

StaticErrors is a gem to help with the creation of static error pages. It allows you to 
use a dynamically generated page as a template, so all of your default styling and layouts
can be used to design the error page. This dynamic page is then saved for static rendering.

# Syntax

'''
rake static_errors <options: option=value,value2>
'''

| Options | Use | Default |
| --- | --- | --- |
| path | Changes the dynamic error root url | http://localhost:3000/errors/ |
| languages | Any additional languages to save | <none> |
| errors | Which errors to save | <none> |
| destination | Where to save the static error pages | public/ |


# Use Cases

## 1: Basic Operations

'''
rake static_errors errors=404
'''
'''
Saving http://localhost:3000/errors/404 to public/404.html
'''

## 2: Multiple Errors

'''
rake static_errors errors=422,500
'''
'''
Saving http://localhost:3000/errors/422 to public/422.html
Saving http://localhost:3000/errors/500 to public/500.html
'''

## 3: Multiple Languages

'''
rake static_errors errors=422 languages=en-GB,de
'''
'''
Saving http://localhost:3000/errors/422 to public/422.html
Saving http://localhost:3000/errors/422?locale=en-GB to public/422.en-GB.html
Saving http://localhost:3000/errors/422?locale=de to public/422.de.html
'''

## 4: Custom URL / Filepaths

'''
rake static_errors errors=422 path=http://mytestserver/special_errors/ destination=public/local/errors/
'''
'''
Saving http://mytestserver/special_errors/422 to public/local/errors/422.html
'''

# Final Considerations

You may wish to check the urls of any externally referenced files needed to render your
error pages. ex: Should jquery/bootstrap/etc be at the same url for your static errors?
