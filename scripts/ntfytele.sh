#this script installs python , python-pip and ntfy[telegram]
#connects the ntfy[telegram] with the @Archupdate_bot
#and sends a test message

token="5195491516:AAEhpAF3PqpMDPtmeY6x0Hgm9tPpMS8CGfE"

yay python-pip
yay dbus-python
pip install ntfy[telegram]
echo "$token"
ntfy -b telegram send "first time configuration"
