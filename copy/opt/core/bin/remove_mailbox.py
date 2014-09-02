#!/usr/bin/env python

import redis
import os.path
import shutil
import glob

""" ***** CONFIG START ***** """

REDIS_SOCKET = '/tmp/redis.sock'
MAILDIR      = '/var/mail'

""" ***** CONFIG END ***** """

os.chdir(MAILDIR)
r = redis.Redis(unix_socket_path=REDIS_SOCKET)

filesDepth = glob.glob('*/*')
dirsDepth = filter(lambda f: os.path.isdir(f), filesDepth)

for dirDepth in dirsDepth:
        domain, user = dirDepth.split('/')
        mail  = user + '@' + domain
        exists = r.exists('mail.account:obj:' + mail)
        if not exists:
                mdir = MAILDIR + "/" + domain + "/" + user
                shutil.rmtree(mdir)
                print '%s,%s' % (mail, mdir)
