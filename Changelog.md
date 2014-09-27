# Changelog

## 14.2.2

### New

* update to new core-base image 43aaede4-4622-11e4-a839-d3704910e498. [Thomas Merkel]

## 14.2.1 (2014-09-25)

### Other

* update changelog. [Thomas Merkel]
* update version number. [Thomas Merkel]
* update to new core-base image: a6fb1ff0-4333-11e4-a0e1-370c81688134. [Thomas Merkel]

## 14.2.0 (2014-09-21)

### Other

* add changelog. [Thomas Merkel]
* update to new core-base image: 6babbf24-3765-11e4-a87a-23e846a65e81. [Thomas Merkel]
* update to new core-base image: 99c9e7ac-34ed-11e4-bdc4-236f63b1ea9d. [Thomas Merkel]
* update readme file. [Thomas Merkel]
* remove [] for spide configuration to also allow hostnames. [Thomas Merkel]
* update to new core-base image: 89402478-34cf-11e4-ac94-f3a4d047918f. [Thomas Merkel]
* update to new core-base image: aed27f7a-34c4-11e4-be6c-4392ae5601bc. [Thomas Merkel]
* update to new core-base image: 5f749f3c-335f-11e4-a952-e780d226fa57. [Thomas Merkel]
* update to new core-base image: fbd244a6-32bf-11e4-8629-73c3e6ed202d. [Thomas Merkel]
* Add script to remove unused mailboxes from server. [Thomas Merkel]
* update to new core-base image: 86465fe4-312d-11e4-a145-57554f40fa40. [Thomas Merkel]
* version is not required. [Thomas Merkel]
* Activate munin plugins. [Thomas Merkel]
* update to new base. [Thomas Merkel]
* add --donotask to backup system. [Thomas Merkel]
* update to new base version. [Thomas Merkel]
* add backup via znapzend. [Thomas Merkel]
* remove rblwatch because not required on mbox server. [Thomas Merkel]
* Add rblwatch/rblcheck script as pip pkg and create cronjob. [Thomas Merkel]
* remove mdata setup script. [Thomas Merkel]
* update base image. [Thomas Merkel]
* spiped-configure-smf moved to base image. [Thomas Merkel]
* update to new version 14.2.0 and base image. [Thomas Merkel]
* holy munin - fixed typo. [BroSys]
* switch to munin community plugin repo and remove static file. [Thomas Merkel]
* Use mdata enable `-s` [Thomas Merkel]
* Use mdata extra include folder. [Thomas Merkel]
* fix plugin check for different munin stuff. [Thomas Merkel]
* missing munin plugin variables. [Thomas Merkel]
* be sure only valid plugins get activated. [Thomas Merkel]
* fix symlink for plugins. [Thomas Merkel]
* enable more plugins and build small script around. [Thomas Merkel]
* fix doveadm command. [Thomas Merkel]
* fix dovecot default mail log. [Thomas Merkel]
* configure munin plugins and add community plugins. [Thomas Merkel]
* Create munin config by ourself because includedir didn't work on munin-node. [Thomas Merkel]
* fix another typo for bash variable. [Thomas Merkel]
* typo, missing `in` at for loop and readme update. [Thomas Merkel]
* Add munin config options to readme. [Thomas Merkel]
* enable and configure munin. [Thomas Merkel]

    * enable munin by default * allow to configure allow and deny hosts
    via mdata

* enable munin-node after installation. [Thomas Merkel]

    * update permissions for .sh files to be not executeable

* add munin-node as default pkg for monitoring. [Thomas Merkel]
* update motd to be in core.io style. [Thomas Merkel]
* fix type in echo output. [Thomas Merkel]
* remove subshell command for possible usage. [Thomas Merkel]
* Rename path for openssl certificate and key. [Thomas Merkel]

    * provide new folder for ssl cert and key * setup permissions for the
    file * create extra ssl folder on dovecot

* also move the dovecot-core-authd socket. [Sebastian Wiedenroth]
* /var/mail/:saved/ should never end up in the image. [Sebastian Wiedenroth]
* don't auto enable mdata-setup during provisioning. [Sebastian Wiedenroth]
* use tmp for redis socket. [Sebastian Wiedenroth]
* list mdata variables and services in the readme. [Sebastian Wiedenroth]
* /var/run is swap and redis doesn't create missing folders. [Sebastian Wiedenroth]
* use full path to base64. [Sebastian Wiedenroth]
* dovecot should listen on lmtp port. [Sebastian Wiedenroth]
* use correct name of package. [Sebastian Wiedenroth]
* fix typo. [Sebastian Wiedenroth]
* no need to reinstall sdc stuff. [Sebastian Wiedenroth]
* 14.1 still callls it dovecot. [Sebastian Wiedenroth]
* deploy redis with config. [Sebastian Wiedenroth]
* use mdata to setup spiped and configure ssl. [Sebastian Wiedenroth]
* enable smf manifests for dovecot, dovecot-core-authd and redis. [Sebastian Wiedenroth]
* setup delegated dataset. [Sebastian Wiedenroth]
* dovecot config changes to only use pop3s and imaps + other small changes. [Sebastian Wiedenroth]
* Added config-files modified package-list. [Boris Poblotzki]
* initial commit mi-core-mbox. [Boris Poblotzki]
* Fixed verbage in packages file. [Derek Crudgington]
* Merge branch 'master' of github.com:joyent/mi-example. [Derek Crudgington]
* Added extra space to motd. [Derek Crudgington]
* Fixed customize. [Derek Crudgington]
* Added new packages file. [Derek Crudgington]
* Removed .gitignore from copy directory. [Derek Crudgington]
* Added var/zoneinit/includes directory. [Derek Crudgington]
* Added LICENSE and copy directory. [Derek Crudgington]
* Initial release. [Derek Crudgington]
