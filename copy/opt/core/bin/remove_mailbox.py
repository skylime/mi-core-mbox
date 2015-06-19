#!/usr/bin/env python
# Thomas Merkel <tm@core.io>

import redis
import os
import shutil
import glob
import time

""" ***** CONFIG START ***** """

REDIS_SOCKET = '/tmp/redis.sock'
MAILDIR      = '/var/mail'
ARCHIVE      = '/var/mail/.archive'
RM_FILE      = 'core-remove-mailbox'

""" ***** CONFIG END ***** """

os.chdir(MAILDIR)
r = redis.Redis(unix_socket_path=REDIS_SOCKET)

filesDepth = glob.glob('*/*')
dirsDepth = filter(lambda f: os.path.isdir(f), filesDepth)
today = str(time.time())

for dirDepth in dirsDepth:
    # get all information
    domain, user = dirDepth.split('/')
    mail = user + '@' + domain
    mdir = MAILDIR + "/" + domain + "/" + user
    rm_file = mdir + "/" + RM_FILE

    # check if redis account exists
    exists = r.exists('mail.account:obj:' + mail)
    if not exists:
        if os.path.exists(rm_file):
            # RM_FILE file exists archive maildir
            shutil.move(mdir, ARCHIVE + "/" + mail + "_" + today)
            print 'Archived: %s,%s' % (mail, mdir)
        else:
            # create RM_FILE file in maildir
            open(rm_file, 'a').close()
            print 'Tagged:   %s,%s' % (mail, mdir)
    else:
        # remove RM_FILE because account still exists in redis
        if os.path.exists(rm_file):
            os.remove(rm_file)
