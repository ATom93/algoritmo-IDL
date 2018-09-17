if [ -f /tmp/.X1-lock ]; then
    rm -f /tmp/.X1-lock
fi
if [ -d /tmp/.X11-unix ]; then
    rm -rf /tmp/.X11-unix
fi
vnc4server
export DISPLAY=$HOSTNAME:1
export PATH=$PATH:/usr/local/exelis/idl85/bin
mv ./T1_data.tif /
mv ./T2_data.tif /
xte 'sleep 30' 'key Return' &
idl -vm=CCA_CHANGE_DETECTION_IDL_TOT.sav 

