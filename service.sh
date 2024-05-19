#!/system/bin/sh
MODDIR=${0%/*}
MNAME=$(basename $MODDIR)

sleep 20
/system/bin/pm grant com.pittvandewitt.wavelet android.permission.DUMP
