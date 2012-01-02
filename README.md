#rainlendar2Refresher

##Summary
Rainlendar is great solution if you are in need of having calendar constantly on your desktop.

Unfortunatly if you want to share your calendars (*.ics files) on Dropbox or any other share platforms, you'll quickly realised that calendar does not refresh on .ics file modification. This will happen even if you have checked 'track modification' in program options.

I get together some codes and ideas from Internet and made a script which monitor ics file changes and reload rainleander2.

Checking interval is set to 20s.

##Setup
* Disable rainleander2 autostart function ( options->general )
* Set new path to ics file somewhere in Dropbox
* Edit program path and ics path( same path as in previous point ) in rainlendar2.vbs:

```
    program = "C:\Program Files\Rainlendar2\Rainlendar2.exe"
    ics = "C:\Users\kubenstein\Dropbox\default.ics"
```

* Put rainlendar2.vbs file in your autostart folder

##Supported systems
* Windows ( tested on winXP, win7 )


##Source
Core vbs code was taken from:

http://www.rainlendar.net/cms/index.php?option=com_kunena&Itemid=42&func=view&catid=3&id=11916
