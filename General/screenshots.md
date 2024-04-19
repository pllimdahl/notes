## Make screenshots

*Log in as the user player*

*export the display var*
```
export DISPLAY=:0
```
*take single screenshot*
```
scrot
```
*type 'ls' to find the png created and download it with teleport GUI.*

### Take multiple screenshots:

*on most machines there is a scrot dir*
```
cd scrots
```
*if not, create it*
```
mkdir scrot
```

*This command takes a screenshot every 2 seconds and saves it with a timestamp in the filename*
```
while true; do scrot '%Y-%m-%d-%H:%M:%S_$wx$h.jpeg' & sleep 2; done
```
*now zip everything in the directory:*
```
zip -r foo.zip .
```

*now download the zipped file via the GUI and remember you are not in the home dir*