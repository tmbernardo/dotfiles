#!/bin/bash
o=$(ifconfig | grep "b8:27:eb:80:0e:b3")

if [ "$o" != "" ]; then
	/usr/libexec/PlistBuddy -c "Delete NAT:Enabled" /Library/Preferences/SystemConfiguration/com.apple.nat.plist
	/usr/libexec/PlistBuddy -c "add NAT:Enabled integer 1" /Library/Preferences/SystemConfiguration/com.apple.nat.plist
else
	/usr/libexec/PlistBuddy -c "Delete NAT:Enabled" /Library/Preferences/SystemConfiguration/com.apple.nat.plist
fi
