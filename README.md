docker-jenkins
===========

This is dockerized Jenkins for build, test my projects. Build from offical image library/jenkins.


How it's work
===========

* Download project:

    `` https://github.com/vukor/docker-jenkins.git ``

* Install docker, docker-compose on your system

* Create volume for save your data:

  `` docker volume create --name=jenkins-data  ``

* Build image:

    `` docker-compose build ``

* Run Jenkins:

    `` docker-compose up -d ``

* Open Jenkins control panel on http://docker-host:8080/


How backup/restore settings
===========

* After run the docker container go to control panel and install plugin "thinBackup"

* Go to "Jenkins Settings" -> "ThinBackup" -> "Settings" and set:

    `` Backup directory:			  /backup/ ``

    `` Backup schedule for full backups:	  0 0 * * 7 ``

    `` Backup schedule for differential backups: 0 0 * * 1-6 ``

    `` Max number of backup sets:		  12 ``

* For restore from backup go to "Jenkins Settings" -> "ThinBackup" -> "Restore". Choose backup date in "restore backup from", set "Restore plugins" and press "Restore"

* Restart Jenkins


The MIT License (MIT)
===========
Copyright (c) 2016 Anton Bugreev <anton@bugreev.ru>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
