# Work email to gmail (using getmail & maildir2gmail)

This is a fork of [_Maildir 2 Gmail_](https://github.com/andreasscherbaum/maildir2gmail) with an easy to use bash script that downloads the mailbox needed for maildir2gmail to do its magic.

On executing the bash script it will download the workplace email account from an IMAP mail server, in the Maildir format, before using mail2gmail to push it into the specified gmail account.

## Requirements

1. Gmail App Password

To work with gmail, the normal username and password aren't accepted, instead an app password must be created which can be done [here](https://support.google.com/accounts/answer/185833).


2. Software versions

Requires python 2.7 and getmail 5.5, both should be avaliable in PATH


## Why script together these two programs?

Lots of workplaces and institutional email accounts remove access to what is valuble reference information once you change workplace or leave an institution. Setting up automatic forwarding of emails to get around this also loses crucical metadata such as CCs and timestamps which are valuable if you need to follow up on something after leaving a workplace. This easy to use combination of getmail and maildir2gmail removes the headache by automatically downloading new emails from the Archive, Drafts, and Sent mailboxes and copies them over to a personal gmail account.

## Quickstart

1. Clone the repo:

`$ git clone https://github.com/seanlaidlaw/maildir2gmail.git && cd maildir2gmail`

2. Edit the Quickstart_getmail.sh and add credentials for source email account and for target gmail account

```
$ head Quickstart_getmail.sh`

#!/usr/bin/env bash

# Replace this part with actual credentials
WORK_EMAIL_USER=jb01
WORK_EMAIL_PASSWORD=myWorkPassword
WORK_EMAIL_SERVER=email.work.ac.uk
GMAIL_EMAIL_USER=joeblogs@gmail.com
GMAIL_EMAIL_PASSWORD=mygmailpassword

```

3. Run the script

`$ bash Quickstart_getmail.sh`
