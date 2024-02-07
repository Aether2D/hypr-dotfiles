For Pywal theming to work, you need to install the pywalfox extension and the native application.

###
https://addons.mozilla.org/en-US/firefox/addon/pywalfox/
yay -S python-pywalfox
###

-------------------------------------------------------------------
If you want to use custom new tab page, change the AboutNewTab.newTabURL in autoconfig.cfg to point to the startpage 
-NOTE: index.html (the startpage) needs to be in the same folder as the other css and js files otherwise it'll just look like a plain html page
>>>>>>>>
To set the custom new tab page, put the contents of the autoconfig folder in usr/lib/floorp
If you are using firefox put them in usr/lib/firefox/
----IMPORTANT----
If you installed floorp-bin from the aur then put them in opts/floorp
