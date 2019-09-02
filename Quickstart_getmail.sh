#!/usr/bin/env bash

# Replace this part with actual credentials
WORK_EMAIL_USER=jb01
WORK_EMAIL_PASSWORD=myWorkPassword
WORK_EMAIL_SERVER=email.work.ac.uk
GMAIL_EMAIL_USER=joeblogs@gmail.com
GMAIL_EMAIL_PASSWORD=myGmailPassword






# create temporary folder in current dir
export WORK_EMAIL_TMP=`pwd`/WORK_EMAIL_TEMP_FOLDER/
mkdir -p $WORK_EMAIL_TMP/{tmp,new,cur}

# replace placeholders in config with values
cat work_getmail.rc | sed "s/WORK_EMAIL_USER/$WORK_EMAIL_USER/g" | sed "s/WORK_EMAIL_PASSWORD/$WORK_EMAIL_PASSWORD/g" > work_getmail.rc.filled

# download email into temp folder
getmail --rcfile `pwd`/work_getmail.rc.filled


# run python2 maildir2gmail.py script to copy downloaded emails to Gmail
python maildir2gmail.py -u $GMAIL_EMAIL_USER -p $GMAIL_EMAIL_PASSWORD {new/,cur} && rm -f work_getmail.rc.filled
