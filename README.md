# Every Chrome Extension
This repo is primarily for holding a list of every chrome extension URL. This data was spidered from the webstore's sitemap (https://chrome.google.com/webstore/sitemap).
The script used, `scrape.sh`, will generate a list of website urls in this format:
`https://chrome.google.com/webstore/detail/<name>/<extension-id>`
For example, this is the Refined GitHub extension's url:  
https://chrome.google.com/webstore/detail/refined-github/hlepfoohegkhhmjieoechaddaejaokhf  

If you want to download this extension, things get slightly more complicated. While this URL has changed in the past, and is not documented, it's been relatively stable for a few years. This will allow you to download a CRX file from the webstore, where <EXTENSION-ID> should be replaced with the actual id, and assuming your client is following redirects:  
`https://clients2.google.com/service/update2/crx?response=redirect&prodversion=31.0.1609.0&x=id%3D<EXTENSION-ID>%26uc`  

Continuing the example above, Refined GitHub's extension ID is `hlepfoohegkhhmjieoechaddaejaokhf`, so the CRX download URL is:  
`https://clients2.google.com/service/update2/crx?response=redirect&prodversion=31.0.1609.0&x=id%3Dhlepfoohegkhhmjieoechaddaejaokhf%26uc`
