#this script installs python , python-pip and ntfy[telegram]
#connects the ntfy[telegram] with the @Archupdate_bot
#and sends a test message

token= "your_token"

yay python-pip
yay dbus-python
pip install ntfy[telegram]
echo "$token"
ntfy -b telegram send "first time configuration"
