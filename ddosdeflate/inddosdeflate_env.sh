#!/bin/bash
if [ -d '/usr/local/ddos' ]; then
        echo; echo; echo "Please un-install the previous version first"
        exit 9
else
        mkdir /usr/local/ddos
fi
clear
echo; echo 'Installing DOS-Deflate 0.6'; echo
echo; echo -n 'Copyinging source files...'
cp /opt/ddosdeflate_install/ddos.conf  /usr/local/ddos
echo -n '.'
cp /opt/ddosdeflate_install/LICENSE  /usr/local/ddos
echo -n '.'
cp /opt/ddosdeflate_install/ignore.ip.list  /usr/local/ddos
echo -n '.'
cp /opt/ddosdeflate_install/ddos.sh  /usr/local/ddos
chmod 0755 /usr/local/ddos/ddos.sh
cp -s /usr/local/ddos/ddos.sh /usr/local/sbin/ddos
echo '...done'

echo; echo -n 'Creating cron to run script every minute.....(Default setting)'
/usr/local/ddos/ddos.sh --cron > /dev/null 2>&1
echo '.....done'
echo; echo 'Installation has completed.'
echo 'Config file is at /usr/local/ddos/ddos.conf'
echo 'Please send in your comments and/or suggestions to zaf@vsnl.com'
echo
sed -i 's/APF_BAN=.*/APF_BAN=0/' /usr/local/ddos/ddos.conf
sed -i 's/FREQ=.*/FREQ=150/' /usr/local/ddos/ddos.conf 
sed -i 's/BAN_PERIOD=.*/BAN_PERIOD=3600/' /usr/local/ddos/ddos.conf
sed -i 's#0-59/1#0-59/2#' /etc/cron.d/ddos.cron
cat /usr/local/ddos/LICENSE 
